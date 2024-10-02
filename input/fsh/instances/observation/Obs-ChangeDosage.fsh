Instance: Obs-ChangeDosage
InstanceOf: CHEMEDObservation
Title: "Observation for Pharmaceutical Advice document"
Description: "Example for Observation (PADV) - CHANGE with new MedicationStatement (change in dosage: 1 tablet in the morning instead of 0.5 tablet)."
Usage: #example

// Reference to 1-1 Medication Treatment Plan document with original dosage of 0.5-0-0-0
* extension[0].extension[0].url = "id"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension[=].extension[+].url = "externalDocumentId"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension[=].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"

// Reference to new MedicationStatement with changed dosage of 1-0-0-0
* extension[+].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[=].valueReference = Reference(MedicationStatement/MedStatTriatec-ChangeDosage)

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:adab8d2d-ae14-48d6-8d15-b726d6ea82c5"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* subject = Reference(MonikaWegmueller)
* performer = Reference(FamilienHausarztAtHausarzt)
* effectiveDateTime = "2012-02-04T14:00:00+01:00"
* issued = "2012-02-04T14:00:00+01:00"
* note.text = "Dosierungsänderung: Morgens 1 Tablette anstatt 0.5 Tablette"