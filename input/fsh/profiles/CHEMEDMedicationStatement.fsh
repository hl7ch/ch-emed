Profile: CHEMEDMedicationStatement
Parent: MedicationStatement
Id: ch-emed-medicationstatement
Title: "CH EMED MedicationStatement"
Description: "Definition of the medication statement for the medication treatment plan document (and as basis medication statement)"

* . ^short = "CH EMED MedicationStatement (MTP and basis)"
* contained 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains CHEMEDExtSubstitution named substitution 0..1
* extension[substitution] ^short = "Whether substitution is allowed or not"
* identifier 1..1
* identifier ^short = "MedicationStatement Identifier"
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1..
* identifier.value ^short = "Identifier value as UUID"
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* medicationReference only Reference(CHEMEDMedication)
* medicationReference ^short = "Reference to the contained medication"
* medicationReference ^type.aggregation = #contained
* subject only Reference(CHCorePatient)
* subject ^short = "Patient"
* subject.reference 1..
* reasonCode ..1
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