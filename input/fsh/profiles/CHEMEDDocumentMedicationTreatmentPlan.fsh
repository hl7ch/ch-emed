Profile: CHEMEDDocumentMedicationTreatmentPlan
Parent: CHCoreDocumentEPR
Id: ch-emed-document-medicationtreatmentplan
Title: "CH EMED Medication Treatment Plan Document"
Description: "Definition of the bundle for the medication treatment plan document"

* . ^short = "CH EMED Medication Treatment Plan Document"
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
* entry[Composition] ^short = "Medication treatment plan composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationTreatmentPlan
* entry contains MedicationStatement 0..*
* entry[MedicationStatement].resource 1..
* entry[MedicationStatement].resource only CHEMEDMedicationStatement