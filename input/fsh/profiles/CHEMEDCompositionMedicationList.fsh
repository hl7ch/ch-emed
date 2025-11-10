Profile: CHEMEDCompositionMedicationList
Parent: CHCoreCompositionEPR
Id: ch-emed-composition-medicationlist
Title: "CH EMED Medication List Composition"
Description: "Definition of the composition for the medication list document"
* . ^short = "CH EMED Medication List Composition"
* language ^short = "Language of the document"
* identifier only CHEMEDUUIDIdentifier
* status = #final (exactly)

* type = $sct#721912009
* type ^short = "Medication summary document (record artifact)"
* type obeys ch-emed-comp-list

* subject ^short = "A patient for whom this document instance was created"
* date ^short = "The document's creation date and time"

* author only Reference(Device)
* author ^short = "The author of the document (device, which dynamically generates the document)"

* title ^short = "'Medikationsliste' in german or 'Liste de médication' in french or 'Elenco delle terapie farmacologiche' in italian or Medication List' in english\r\n                        or titles in other languages are also allowed"

* confidentiality.extension[confidentialityCode] ^short = "Swiss realm of confidentiality code according to the Swiss EPR regulation"

* attester ^short = "The authenticator of the document (person)"
* attester[legalAuthenticator] ^short = "The legal authenticator of the document (person)"
* attester[legalAuthenticator].time ^short = "Timestamp of the signature"
* attester[legalAuthenticator].party ^short = "Who attested the composition"

* section ^short = "Medication list"
* section contains
    list 1..1 and
    annotation 0..1
* section[list] ^short = "Medication list"
* section[list].title 1..1
* section[list].title ^short = "'Medikamentenliste' in german or 'Liste de médicaments' in french or 'Lista farmaci' in italian or 'Medication List' in english\r\n                        or titles in other languages are also allowed"
* section[list].code 1..
* section[list].code = $loinc#10160-0
* section[list].text 1..1
* section[list].text ^short = "Human readable text of this section"
* section[list].entry ^slicing.discriminator.type = #profile
* section[list].entry ^slicing.discriminator.path = "$this.resolve()"
* section[list].entry ^slicing.rules = #open
* section[list].entry contains
    medicationStatement 0..* and
    medicationRequest 0..* and
    medicationDispense 0..* and
    observation 0..*
* section[list].entry[medicationStatement] only Reference(CHEMEDMedicationStatementList or CHEMEDMedicationStatementChangedList)
* section[list].entry[medicationStatement] ^short = "MedicationStatement (from MTP or PADV)"
* section[list].entry[medicationStatement].reference 1..
* section[list].entry[medicationRequest] only Reference(CHEMEDMedicationRequestList or CHEMEDMedicationRequestChangedList)
* section[list].entry[medicationRequest] ^short = "MedicationRequest (from PRE or PADV)"
* section[list].entry[medicationRequest].reference 1..
* section[list].entry[medicationDispense] only Reference(CHEMEDMedicationDispenseList or CHEMEDMedicationAdministrationList)
* section[list].entry[medicationDispense] ^short = "MedicationDispense or MedicationAdministration (from DIS)"
* section[list].entry[medicationDispense].reference 1..
* section[list].entry[observation] only Reference(CHEMEDObservationList)
* section[list].entry[observation] ^short = "Observation (from PADV)"
* section[list].entry[observation].reference 1..
* section[list].section 0..0
* section[annotation] ^short = "Annotation"
* section[annotation].title 1..1
* section[annotation].title ^short = "'Kommentar' in german or 'Commentaire' in french or 'Osservazione' in italian or 'Comment' in english\r\n                        or titles in other languages are also allowed"
* section[annotation].code 1..
* section[annotation].code = $loinc#48767-8
* section[annotation].text 1..1
* section[annotation].text ^short = "Human readable text of this section"
* section[annotation].section 0..0