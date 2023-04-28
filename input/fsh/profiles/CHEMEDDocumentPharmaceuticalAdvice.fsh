Profile: CHEMEDDocumentPharmaceuticalAdvice
Parent: CHCoreDocumentEPR
Id: ch-emed-document-pharmaceuticaladvice
Title: "CH EMED Pharmaceutical Advice Document"
Description: "Definition of the bundle for the pharmaceutical advice document"

* . ^short = "CH EMED Pharmaceutical Advice Document"
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
* entry[Composition] ^short = "Pharmaceutical advice composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionPharmaceuticalAdvice
* entry contains
    Observation 0..* and
    MedicationStatementChanged 0..* and
    MedicationRequestChanged 0..*
* entry[Observation].resource 1..
* entry[Observation].resource only CHEMEDObservation
* entry[MedicationStatementChanged].resource 1..
* entry[MedicationStatementChanged].resource only CHEMEDMedicationStatementChanged
* entry[MedicationRequestChanged].resource 1..
* entry[MedicationRequestChanged].resource only CHEMEDMedicationRequestChanged