Profile: CHEMEDDocumentMedicationDispense
Parent: CHCoreDocumentEPR
Id: ch-emed-document-medicationdispense
Title: "CH EMED Medication Dispense Document"
Description: "Definition of the bundle for the medication dispense document"

* . ^short = "CH EMED Medication Dispense Document"
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* timestamp ^short = "The document's creation date and time"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Medication dispense composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationDispense
* entry contains 
    MedicationDispense 0..* and
    MedicationAdministration 0..*
* entry[MedicationDispense].resource 1..
* entry[MedicationDispense].resource only CHEMEDMedicationDispense
* entry[MedicationAdministration].resource 1..
* entry[MedicationAdministration].resource only CHEMEDMedicationAdministration
