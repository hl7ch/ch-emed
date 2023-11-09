Profile: CHEMEDMedicationRequest
Parent: MedicationRequest
Id: ch-emed-medicationrequest
Title: "CH EMED MedicationRequest (PRE)"
Description: "Definition of the medication request for the medication prescription document"

* . ^short = "CH EMED MedicationRequest (PRE)"
* contained 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains CHEMEDExtTreatmentPlan named treatmentplan 0..1
* extension[treatmentplan] ^short = "Reference to the medication treatment plan"
* identifier 1..1
* identifier ^short = "MedicationRequest Identifier"
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
* requester 1..
* requester only Reference(CHEMEDPractitionerRole)
* requester ^short = "The author of the medical decision, see also 'Guidance - Authorship'"
* requester.reference 1..
* reasonCode ..1
* reasonCode ^short = "Treatment reason"
* dosageInstruction ^slicing.discriminator.type = #profile
* dosageInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction ^slicing.rules = #closed
* dosageInstruction ^short = "How the medication should be taken"
* dosageInstruction contains
    baseEntry 1..1 and
    additionalEntry 0..*
* dosageInstruction[baseEntry] only CHEMEDDosageMedicationRequest
* dosageInstruction[baseEntry] ^short = "Base entry of the dosage instruction"
* dosageInstruction[additionalEntry] only CHEMEDDosageSplit
* dosageInstruction[additionalEntry] ^short = "Additional entry of the dosage instruction"
* dispenseRequest ^short = "Medication supply authorization"
* dispenseRequest.validityPeriod ^short = "Period of validity of the prescription"
* dispenseRequest.numberOfRepeatsAllowed ^short = "Repeated supply per medication (without initial dispense)"
* dispenseRequest.quantity ^short = "Number of packages"
* substitution.allowedCodeableConcept from $v3-ActSubstanceAdminSubstitutionCode (preferred)