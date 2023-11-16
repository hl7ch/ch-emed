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
* entry[Composition] ^short = "Medication list composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationList
* entry contains
    MedicationStatement 0..* and
    MedicationRequest 0..* and
    MedicationDispense 0..* and
    MedicationAdministration 0..* and
    Observation 0..* and
    MedicationStatementChanged 0..* and
    MedicationRequestChanged 0..*
* entry[MedicationStatement].resource 1..
* entry[MedicationStatement].resource only CHEMEDMedicationStatementList
* entry[MedicationRequest].resource 1..
* entry[MedicationRequest].resource only CHEMEDMedicationRequestList
* entry[MedicationDispense].resource 1..
* entry[MedicationDispense].resource only CHEMEDMedicationDispenseList 
* entry[MedicationAdministration].resource 1..
* entry[MedicationAdministration].resource only CHEMEDMedicationAdministration
* entry[Observation].resource 1..
* entry[Observation].resource only CHEMEDObservationList
* entry[MedicationStatementChanged].resource 1..
* entry[MedicationStatementChanged].resource only CHEMEDMedicationStatementChanged
* entry[MedicationRequestChanged].resource 1..
* entry[MedicationRequestChanged].resource only CHEMEDMedicationRequestChanged