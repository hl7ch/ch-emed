Profile: CHEMEDMedicationStatementList
Parent: CHEMEDMedicationStatement
Id: ch-emed-medicationstatement-list
Title: "CH EMED MedicationStatement (LIST)"
Description: "Definition of the medication statement for the medication list document"

* . ^short = "CH EMED MedicationStatement (LIST)"
* extension contains
    CHEMEDExtTreatmentPlan named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (MedicationStatement.informationSource), see also 'Guidance - Different Authors'"
* informationSource 1..
* informationSource only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* informationSource ^short = "The author and her/his organization of the medical decision, see also 'Guidance - Different Authors'"
* informationSource.reference 1..