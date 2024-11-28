Instance: NotRecommendedTimingCodes
InstanceOf: CHEMEDMedicationStatementCard
Title: "Medication Statement with NOT recommended timing codes"
Description: "Example for MedicationStatment - Norvasc with NOT recommended timing codes."
Usage: #example
* contained = Norvasc
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0e9a0b8a-8306-4e35-bb92-0ba424696349"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0e9a0b8a-8306-4e35-bb92-0ba424696349"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension[lastConsideredDocument].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[lastConsideredDocument].valueIdentifier.value = "urn:uuid:d6f95b15-d88b-4723-91f7-72fe897a0bc7"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92f5d646-2b51-4266-84e3-a50f531ca287"
* status = #active
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2012-02-04"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosage[baseEntry].timing.repeat.when[0] = #CM
* dosage[baseEntry].timing.repeat.when[+] = #CV
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"