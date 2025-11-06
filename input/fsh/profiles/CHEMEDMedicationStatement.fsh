Profile: CHEMEDMedicationStatement
Parent: CHCoreMedicationStatement
Id: ch-emed-medicationstatement
Title: "CH EMED MedicationStatement"
Description: "Definition of the medication statement for the medication treatment plan document (and as basis medication statement)"
* . ^short = "CH EMED MedicationStatement (MTP and basis)"
* obeys ch-dosage-medstat
* contained 1..
/* CH Core
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains CHEMEDExtSubstitution named substitution 0..1
* extension[substitution] ^short = "Whether substitution is allowed or not"
*/
* identifier 1..1
* identifier ^short = "MedicationStatement Identifier"
* identifier only CHEMEDUUIDIdentifier
* medicationReference only Reference(CHEMEDMedication)
* medicationReference ^short = "Reference to the contained medication"
* medicationReference ^type.aggregation = #contained
* subject only Reference(CHCorePatient)
* subject ^short = "Patient"
* subject.reference 1..
* dateAsserted 1..
* informationSource 1..
* informationSource only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or CHCoreRelatedPerson)
* informationSource ^short = "The author of the medical decision, see also 'Guidance - Authorship'"
* informationSource.reference 1..
* reasonCode ^short = "Treatment reason"
* dosage ^slicing.discriminator.type = #profile
* dosage ^slicing.discriminator.path = "$this"
* dosage ^slicing.rules = #closed
* dosage ^short = "How the medication should be taken"
* dosage contains
    baseEntry 1..1 and
    additionalEntry 0..*
* dosage[baseEntry] only CHEMEDDosage
* dosage[baseEntry] ^short = "Base entry of the dosage instruction"
* dosage[additionalEntry] only CHEMEDDosageSplit
* dosage[additionalEntry] ^short = "Additional entry of the dosage instruction"