Profile: CHEMEDDocumentMedicationPrescription
Parent: CHCoreDocumentEPR
Id: ch-emed-document-medicationprescription
Title: "CH EMED Medication Prescription Document"
Description: "Definition of the bundle for the medication prescription document"

* . ^short = "CH EMED Medication Prescription Document"
* identifier 1..
* identifier only CHEMEDUUIDIdentifier
* timestamp ^short = "The document's creation date and time"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Medication prescription composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationPrescription
* entry contains MedicationRequest 0..*
* entry[MedicationRequest].resource 1..
* entry[MedicationRequest].resource only CHEMEDMedicationRequest