Profile: CHEMEDObservation
Parent: Observation
Id: ch-emed-observation
Title: "CH EMED Observation (PADV)"
Description: "Definition of the observation for the pharmaceutical advice document"

* obeys ch-obs-1
* . ^short = "CH EMED Observation (PADV)"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    CHEMEDExtTreatmentPlan named treatmentPlan 0..1 and
    CHEMEDExtPrescription named prescription 0..1 and
    CHEMEDExtDispense named dispense 0..1 and
    CHEMEDExtMedicationStatementChanged named medicationStatementChanged 0..1 and
    CHEMEDExtMedicationRequestChanged named medicationRequestChanged 0..1
* extension[treatmentPlan] ^short = "Reference to the medication treatment plan"
* extension[prescription] ^short = "Reference to the medication prescription"
* extension[dispense] ^short = "Reference to the medication dispense"
* extension[medicationStatementChanged] ^short = "Reference to the changed medication statement (it shall have the same identifier as the entry it replaces)"
* extension[medicationRequestChanged] ^short = "Reference to the changed medication request (it shall have the same identifier as the entry it replaces)"
* identifier 1..1
* identifier ^short = "Observation Identifier"
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1..
* identifier.value ^short = "Identifier value as UUID"
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #final (exactly)
* code from $ihe-pharmaceuticaladvicestatuslist (required)
* code ^short = "Observation code"
* subject only Reference(CHCorePatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime ^short = "Effective Time"
* note 1..1
* note ^short = "COMMENT: the actual comment. OK/CHANGE/REFUSE/CANCEL/SUSPEND: the reason why the action was done."
* performer only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* performer ^short = "The author and her/his organization of the medical decision, see also 'Guidance - Different Authors'"
* performer.reference 1..