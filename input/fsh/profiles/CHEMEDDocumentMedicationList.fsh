Profile: CHEMEDDocumentMedicationList
Parent: CHCoreDocumentEPR
Id: ch-emed-document-medicationlist
Title: "CH EMED Medication List Document"
Description: "Definition of the bundle for the medication list document"

* . ^short = "CH EMED Medication List Document"
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
* entry[Composition].resource ^short = "CH EMED Medication List Composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationList
* entry contains
    MedicationStatement 0..* and
    MedicationRequest 0..* and
    MedicationDispense 0..* and
    MedicationAdministration 0..* and
    Observation 0..*
* entry[MedicationStatement].resource ^short = "CH EMED MedicationStatement (LIST) | CH EMED MedicationStatement Changed (LIST)"
* entry[MedicationStatement].resource 1..
* entry[MedicationStatement].resource only CHEMEDMedicationStatement
* entry[MedicationRequest].resource ^short = "CH EMED MedicationRequest (LIST) | CH EMED MedicationRequest Changed (LIST)"
* entry[MedicationRequest].resource 1..
* entry[MedicationRequest].resource only CHEMEDMedicationRequest
* entry[MedicationDispense].resource ^short = "CH EMED MedicationDispense (LIST)"
* entry[MedicationDispense].resource 1..
* entry[MedicationDispense].resource only CHEMEDMedicationDispense
* entry[MedicationAdministration].resource ^short = "CH EMED MedicationAdministration (LIST)"
* entry[MedicationAdministration].resource 1..
* entry[MedicationAdministration].resource only CHEMEDMedicationAdministration
* entry[Observation].resource ^short = "CH EMED Observation (LIST)"
* entry[Observation].resource 1..
* entry[Observation].resource only CHEMEDObservation