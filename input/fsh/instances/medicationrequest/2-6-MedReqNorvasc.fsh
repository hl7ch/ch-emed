Instance: 2-6-MedReqNorvasc
InstanceOf: CHEMEDMedicationRequest
Title: "2-6 Medication Request with Medication Norvasc"
Description: "Example for MedicationRequest (PRE)"
Usage: #example
* contained = Norvasc
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0e9a0b8a-8306-4e35-bb92-0ba424696349"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:0e9a0b8a-8306-4e35-bb92-0ba424696349"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1c5b5e9b-24f7-45ed-ae9c-6e2ec53e7b05"
* status = #active
* intent = #order
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/MonikaWegmueller"
* authoredOn = "2012-02-04T14:00:00+01:00"
* requester.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "-"
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosageInstruction[baseEntry].timing.repeat.when[0] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dispenseRequest.validityPeriod.start = "2012-02-04"
* dispenseRequest.validityPeriod.end = "2012-05-03"
// substitution just as test case
* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#E "equivalent"
