Profile: CHEMEDMedicationAdministration
Parent: MedicationAdministration
Id: ch-emed-medicationadministration
Title: "CH EMED MedicationAdministration (DIS)"
Description: "Definition of the medication administration for the medication dispense document"
* . ^short = "CH EMED MedicationAdministration (DIS)"
* contained 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    CHEMEDExtPrescription named prescription 0..1 and
    CHEMEDExtPharmaceuticalAdvice named pharmaceuticalAdvice 0..1 and
    CHEMEDExtTreatmentPlan named treatmentPlan 0..1
* extension[prescription] ^short = "Reference to the medication prescription"
* extension[pharmaceuticalAdvice] ^short = "Reference to the pharmaceutical advice"
* extension[treatmentPlan] ^short = "Reference to the medication treatment plan"
* identifier 1..1
* identifier ^short = "MedicationAdministration Identifier"
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
* performer.actor.reference 1..
* performer.actor ^short = "The author of the medical decision, see also 'Guidance - Authorship'"
* reasonCode ..1
* reasonCode ^short = "Treatment reason"
* dosage 1..
