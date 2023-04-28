Extension: CHEMEDExtSubstitution
Id: ch-emed-ext-substitution
Title: "CH EMED Extension Substitution"
Description: "This extension is used to indicate whether the medication can be substituted for this patient, i.e. whether it is allowed. 
                        (For a prescription, MedicationRequest.substitution is used to record whether a substitution is allowed or not. 
                        When dispensing, a performed substitution is recorded in MedicationDispense.substitution.)"

* ^context.type = #element
* ^context.expression = "MedicationStatement"
* . ^short = "CH EMED Extension"
* url only uri
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $v3-ActSubstanceAdminSubstitutionCode (preferred)
* valueCodeableConcept ^short = "Whether substitution is allowed or not"