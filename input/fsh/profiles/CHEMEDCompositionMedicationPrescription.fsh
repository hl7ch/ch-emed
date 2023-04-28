Profile: CHEMEDCompositionMedicationPrescription
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-medicationprescription
Title: "CH EMED Medication Prescription Composition"
Description: "Definition of the composition for the medication prescription document"

* . ^short = "CH EMED Medication Prescription Composition"
* language ^short = "Language of the document"
* identifier.system 1..
* identifier.value 1..
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #final (exactly)
* type = $loinc#57833-6
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

* title ^short = "'Rezept' in german or 'Ordonnance' in french or 'Ricetta' in italian or 'Prescription' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"

* section 1..
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section[originalRepresentation] 1..1
* section[originalRepresentation] ^short = "Original representation"
* section[originalRepresentation].title ^short = "'Original Darstellung' in german or 'Représentation originale' in french or 'Rappresentazione originale' in italian or 'Original representation' in english\r\n                        or titles in other languages are also allowed"
* section[originalRepresentation].code = $loinc#55108-5
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "PDF"
* section contains
    prescription 1..1 and
    annotation 0..1
* section[prescription] ^short = "Medication prescription"
* section[prescription].title 1..1
* section[prescription].title ^short = "'Arzneimittelverordnung' in german or 'Prescription médicamenteuse' in french or 'Prescrizione di droga' in italian or 'Prescription for medication' in english\r\n                        or titles in other languages are also allowed"
* section[prescription].code 1..
* section[prescription].code = $loinc#57828-6
* section[prescription].author only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* section[prescription].author ^short = "The author of the medical decision (person) if different from the author of the document (Composition.author), see also 'Guidance - Different Authors'"
* section[prescription].author.reference 1..
* section[prescription].text 0..1
* section[prescription].text ^short = "Human readable text of this section"
* section[prescription].entry 1..*
* section[prescription].entry only Reference(CHEMEDMedicationRequest)
* section[prescription].entry ^short = "Medication request"
* section[prescription].entry.reference 1..
* section[prescription].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0