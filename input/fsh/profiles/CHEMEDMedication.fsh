Profile: CHEMEDMedication
Parent: Medication
Id: ch-emed-medication
Title: "CH EMED Medication"
Description: "Definition of the medication"

* obeys ch-emed-med-1
* . ^short = "CH EMED Medication"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^short = "Code of the medication"
* code.coding contains 
    GTIN 0..* and
    ATC 0..*

* code.coding[GTIN] ^short = "Use GTIN for Swiss products"
* code.coding[GTIN] ^mustSupport = true
* code.coding[GTIN].system 1..1
* code.coding[GTIN].system = "urn:oid:2.51.1.1" (exactly)
* code.coding[GTIN].system ^short = "Global Trade Item Number (GS1)"
* code.coding[GTIN].code 1..1

* code.coding[ATC] ^short = "Use ATC for foreign products"
* code.coding[ATC].system 1..1
* code.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* code.coding[ATC].system ^short = "Anatomical Therapeutic Chemical (ATC) Classification"
* code.coding[ATC].code 1..1

* code.text 1.. MS
* code.text ^short = "Medication name"
* form from $edqm-pharmaceuticaldoseform (required)
* form ^short = "Galenic form"
* form.coding 1.. MS
* form.coding.system 1..
* form.coding.code 1..
* amount only CHEMEDRatioWithEmedUnits
* amount ^short = "Package size"
* ingredient.itemCodeableConcept.coding from $ActivePharmaceuticalIngredient (extensible)
* ingredient.itemCodeableConcept.coding ^short = "Ingredients coded with SNOMED CT"
* ingredient.itemCodeableConcept.text 1.. MS
* ingredient.itemCodeableConcept.text ^short = "Ingredient name"
* ingredient.strength only CHEMEDRatioWithEmedUnits
* ingredient.strength MS
* ingredient.strength ^short = "Dose per unit"