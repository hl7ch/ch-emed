Profile: CHEMEDMedicationStatementCard
Parent: CHEMEDMedicationStatement
Id: ch-emed-medicationstatement-card
Title: "CH EMED MedicationStatement (CARD)"
Description: "Definition of the medication statement for the medication card document"
* . ^short = "CH EMED MedicationStatement (CARD)"
* extension contains
    CHEMEDExtTreatmentPlan named treatmentPlan 0..1 and
    Author named authorDocument 0..1
* extension[treatmentPlan] ^short = "Reference to the medication treatment plan"
* extension[authorDocument] ^short = "\"Last\" author of the original document if different from the author of the medical decision (MedicationStatement.informationSource), see also 'Guidance - Authorship'"
* medicationReference only Reference(CHEMEDMedication)
* medicationReference MS
* informationSource 1..
* informationSource only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* informationSource ^short = "The \"last\" author of the medical decision, see also 'Guidance - Authorship'"
* informationSource.reference 1..
* reasonCode.text MS
* note ^short = "Annotation comment"
* dosage MS