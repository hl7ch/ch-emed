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
* extension[medicationStatementChanged] ^short = "Reference to the changed medication statement (it SHALL have the same identifier as the entry it replaces)"
* extension[medicationRequestChanged] ^short = "Reference to the changed medication request (it SHALL have the same identifier as the entry it replaces)"
* identifier 1..1
* identifier ^short = "Observation Identifier"
* identifier only CHEMEDUUIDIdentifier
* status = #final (exactly)
* code from $ihe-pharmaceuticaladvicestatuslist (required)
* code ^short = "Observation code"
* subject only Reference(CHCorePatient)
* subject ^short = "Patient"
* subject.reference 1..
* effectiveDateTime ^short = "Effective Time"
* issued 1..
* performer 1..1
* performer only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or CHCoreRelatedPerson)
* performer ^short = "The author of the medical decision, see also 'Guidance - Authorship'"
* performer.reference 1..
* note 1..1
* note ^short = "COMMENT: the actual comment. OK/CHANGE/REFUSE/CANCEL/SUSPEND: the reason why the action was done."