Profile: CHEMEDCompositionMedicationTreatmentPlan
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-medicationtreatmentplan
Title: "CH EMED Medication Treatment Plan Composition"
Description: "Definition of the composition for the medication treatment plan document"

* . ^short = "CH EMED Medication Treatment Plan Composition"
* language ^short = "Language of the document"
* identifier.system 1..
* identifier.value 1..
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #final (exactly)

* type = $sct#761931002
* type ^short = "Medication treatment plan report (record artifact)"
* type obeys ch-emed-comp-mtp

* subject ^short = "A patient for whom this document instance was created"
* date ^short = "The document's creation date and time"

* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #closed
* author contains
    person 1..* and
    device 0..*
* author[person] only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* author[person] ^short = "The author of the document (person)"
* author[device] only Reference(Device)
* author[device] ^short = "The device that created the document"

* title ^short = "'Therapieentscheid Medikation' in german or 'Décision thérapeutique relative à la médication' in french or 'Decisione terapeutica di trattamento farmacologico' in italian or 'Medication Treatment Plan' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"

* section contains
    treatmentPlan 1..1 and
    annotation 0..1
* section[treatmentPlan] ^short = "Medication treatment plan"
* section[treatmentPlan].title 1..1
* section[treatmentPlan].title ^short = "'Medikamentöser Behandlungsplan' in german or 'Plan de traitement médicamenteux' in french or 'Piano terapeutico farmacologico' in italian or 'Medication Treatment Plan' in english\r\n                        or titles in other languages are also allowed"
* section[treatmentPlan].code 1..
* section[treatmentPlan].code = $loinc#77604-7
* section[treatmentPlan].text 1..1
* section[treatmentPlan].text ^short = "Human readable text of this section"
* section[treatmentPlan].entry 1..1
* section[treatmentPlan].entry only Reference(CHEMEDMedicationStatement)
* section[treatmentPlan].entry ^short = "Medication statement"
* section[treatmentPlan].entry.reference 1..
* section[treatmentPlan].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0