Profile: CHEMEDCompositionMedicationDispense
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-medicationdispense
Title: "CH EMED Medication Dispense Composition"
Description: "Definition of the composition for the medication dispense document"

* . ^short = "CH EMED Medication Dispense Composition"
* language ^short = "Language of the document"
* identifier.system 1..
* identifier.value 1..
* identifier.value ^example.label = "CH EMED"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* status = #final (exactly)

* type = $sct#294121000195110
* type ^short = "Medication dispense document (record artifact)"
* type obeys ch-emed-comp-dis

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

* title ^short = "'Abgabe' in german or 'Remise' in french or 'Dispensazione' in italian or 'Dispense' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section contains
    dispense 1..1 and
    annotation 0..1
* section[dispense] ^short = "Medication dispense"
* section[dispense].title 1..1
* section[dispense].title ^short = "'Abgabe eines Medikaments' in german or 'Dispensation d'un médicament' in french or 'Dispensazione di un medicamento' in italian or 'Medication dispensed' in english\r\n                        or titles in other languages are also allowed"
* section[dispense].code 1..
* section[dispense].code = $loinc#60590-7
* section[dispense].author only Reference(CHEMEDPractitionerRole or CHCorePatientEPR or RelatedPerson)
* section[dispense].author ^short = "The author of the medical decision (person) if different from the author of the document (Composition.author), see also 'Guidance - Different Authors'"
* section[dispense].author.reference 1..
* section[dispense].text 1..1
* section[dispense].text ^short = "Human readable text of this section"
* section[dispense].entry 1..1
* section[dispense].entry only Reference(CHEMEDMedicationDispense)
* section[dispense].entry ^short = "Medication dispense"
* section[dispense].entry.reference 1..
* section[dispense].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0