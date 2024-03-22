Profile: CHEMEDMedicationDispense
Parent: CHCoreMedicationDispense
Id: ch-emed-medicationdispense
Title: "CH EMED MedicationDispense (DIS)"
Description: "Definition of the medication dispense for the medication dispense document"
* . ^short = "CH EMED MedicationDispense (DIS)"
* obeys ch-dosage-meddis
* contained 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
// CH Core:    CHEMEDExtTreatmentReason named treatmentReason 0..1 and
    CHEMEDExtPrescription named prescription 0..1 and
    CHEMEDExtPharmaceuticalAdvice named pharmaceuticalAdvice 0..1 and
    CHEMEDExtTreatmentPlan named treatmentPlan 0..1
* extension[treatmentReason] ^short = "Treatment reason"
* extension[prescription] ^short = "Reference to the medication prescription"
* extension[pharmaceuticalAdvice] ^short = "Reference to the pharmaceutical advice"
* extension[treatmentPlan] ^short = "Reference to the medication treatment plan"
* identifier 1..1
* identifier ^short = "MedicationDispense Identifier"
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1..
* identifier.value ^short = "Identifier value as UUID"
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #completed (exactly)
* medicationReference only Reference(CHEMEDMedicationMedicationDispense)
* medicationReference ^short = "Reference to the contained medication"
* medicationReference ^type.aggregation = #contained
* subject only Reference(CHCorePatient)
* subject ^short = "Patient"
* subject.reference 1..
* performer 1..1
* performer.actor only Reference(CHEMEDPractitionerRole)
* performer.actor ^short = "The author of the medical decision, see also 'Guidance - Authorship'"
* performer.actor.reference 1..
* quantity 1..
* quantity ^short = "Number of packages"
* whenHandedOver 1..
* dosageInstruction ^slicing.discriminator.type = #profile
* dosageInstruction ^slicing.discriminator.path = "$this"
* dosageInstruction ^slicing.rules = #closed
* dosageInstruction ^short = "How the medication should be taken"
* dosageInstruction contains
    baseEntry 1..1 and
    additionalEntry 0..*
* dosageInstruction[baseEntry] only CHEMEDDosage
* dosageInstruction[baseEntry] ^short = "Base entry of the dosage instruction"
* dosageInstruction[additionalEntry] only CHEMEDDosageSplit
* dosageInstruction[additionalEntry] ^short = "Additional entry of the dosage instruction"
* substitution obeys ch-emed-dis-1
// CH Core: * substitution.wasSubstituted ^short = "Whether a substitution was (true) or was not (false) performed on the dispense"
* substitution.type from $ActSubstanceAdminSubstitutionCode (required)
// CH Core: * substitution.type ^short = "If 'wasSubstituted = true', the type can be defined in addition (optional). If 'wasSubstituted = false', no type is expected."
