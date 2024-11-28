Profile: CHEMEDCompositionMedicationCard
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-medicationcard
Title: "CH EMED Medication Card Composition"
Description: "Definition of the composition for the medication card document"
* . ^short = "CH EMED Medication Card Composition"
* language ^short = "Language of the document"
* identifier.system 1..
* identifier.value 1..
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #final (exactly)

* type = $sct#736378000
* type ^short = "Medication management plan (record artifact)"
* type obeys ch-emed-comp-card

* subject MS
* subject ^short = "A patient for whom this document instance was created"
* date MS
* date ^short = "The document's creation date and time"

* author only Reference(CHEMEDPractitionerRole or Device or CHCorePatientEPR or RelatedPerson)
* author MS
* author ^short = "The author of the document (person or device)"

* title ^short = "'Medikationsplan' in german or 'Plan de médication' in french or 'Piano farmacologico' in italian or 'Medication Card' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"

* section 1..

* section[originalRepresentation] 1..1 MS
* section[originalRepresentation] ^short = "Original representation"
* section[originalRepresentation].title ^short = "'Original Darstellung' in german or 'Représentation originale' in french or 'Rappresentazione originale' in italian or 'Original representation' in english\r\n                        or titles in other languages are also allowed"
* section[originalRepresentation].code = $loinc#55108-5
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry MS
* section[originalRepresentation].entry ^short = "PDF"

* section contains
    card 1..1 MS and
    annotation 0..1 MS

* section[card] ^short = "Medication card"
* section[card].title 1..1
* section[card].title ^short = "'Medikamentenliste' in german or 'Liste de médicaments' in french or 'Lista farmaci' in italian or 'Medication List' in english\r\n                        or titles in other languages are also allowed"
* section[card].code 1..
* section[card].code = $loinc#10160-0
* section[card].text 0..1
* section[card].text ^short = "Human readable text of this section"
* section[card].entry 0..* MS
* section[card].entry only Reference(CHEMEDMedicationStatementCard)
* section[card].entry ^short = "Medication statement"
* section[card].entry.reference 1..
* section[card].section 0..0

* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1 MS
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0