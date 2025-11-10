Profile: CHEMEDDocumentMedicationCard
Parent: CHCoreDocumentEPR
Id: ch-emed-document-medicationcard
Title: "CH EMED Medication Card Document"
Description: "Definition of the bundle for the medication card document"

* . ^short = "CH EMED Medication Card Document"
* identifier 1..
* identifier only CHEMEDUUIDIdentifier
* timestamp MS
* timestamp ^short = "The document's creation date and time"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1 
* entry[Composition] ^short = "Medication card composition"
* entry[Composition].resource 1..
* entry[Composition].resource only CHEMEDCompositionMedicationCard
* entry contains MedicationStatement 0..*
* entry[MedicationStatement].resource 1..
* entry[MedicationStatement].resource only CHEMEDMedicationStatementCard