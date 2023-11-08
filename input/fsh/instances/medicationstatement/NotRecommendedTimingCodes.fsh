Instance: NotRecommendedTimingCodes
InstanceOf: CHEMEDMedicationStatementCard
Title: "Medication Statement with NOT recommended timing codes"
Description: "Example for MedicationStatment with NOT recommended timing codes"
Usage: #example
* contained = Norvasc
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:5712fffe-20c6-11e6-b67b-9e71128cae77"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:5712fffe-20c6-11e6-b67b-9e71128cae77"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:534996fe-5e45-40ed-9388-06fa268e13d8"
* status = #active
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/MonikaWegmueller"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosage[baseEntry].timing.repeat.when[0] = #CM
* dosage[baseEntry].timing.repeat.when[+] = #CV
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"