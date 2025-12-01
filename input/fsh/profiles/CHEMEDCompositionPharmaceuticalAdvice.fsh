Profile: CHEMEDCompositionPharmaceuticalAdvice
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-pharmaceuticaladvice
Title: "CH EMED Pharmaceutical Advice Composition"
Description: "Definition of the composition for the pharmaceutical advice document"

* . ^short = "CH EMED Pharmaceutical Advice Composition"
* language ^short = "Language of the document"
* identifier only CHEMEDUUIDIdentifier
* status = #final (exactly)

* type = $sct#419891008
* type ^short = "Record artifact (record artifact)"
* type obeys ch-emed-comp-padv

* subject ^short = "A patient for whom this document instance was created"
* date ^short = "The document's creation date and time"

* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #closed
* author contains
    person 1..* and
    device 0..*
* author[person] only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or CHCoreRelatedPerson)
* author[person] ^short = "The author of the document (person)"
* author[device] only Reference(Device)
* author[device] ^short = "The device that created the document"

* title ^short = "'Kommentar zur Medikation' in german or 'Commentaire relatif à la médication' in french or 'Commento sulla terapia farmacologica' in italian or 'Pharmaceutical Advice' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* section contains
    pharmaceuticalAdvice 1..1 and
    annotation 0..1
* section[pharmaceuticalAdvice] ^short = "Pharmaceutical advice"
* section[pharmaceuticalAdvice].title 1..1
* section[pharmaceuticalAdvice].title ^short = "'Hinweise zur Medikation' in german or 'Conseils sur les médicaments' in french or 'Consigli sui medicamenti' in italian or 'Pharmaceutical Advice' in english\r\n                        or titles in other languages are also allowed"
* section[pharmaceuticalAdvice].code 1..
* section[pharmaceuticalAdvice].code = $loinc#61357-0
* section[pharmaceuticalAdvice].text 1..1
* section[pharmaceuticalAdvice].text ^short = "Human readable text of this section"
* section[pharmaceuticalAdvice].entry 1..1
* section[pharmaceuticalAdvice].entry only Reference(CHEMEDObservation)
* section[pharmaceuticalAdvice].entry ^short = "Observation"
* section[pharmaceuticalAdvice].entry.reference 1..
* section[pharmaceuticalAdvice].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0