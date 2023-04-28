Instance: 2-6-MedReqNorvasc
InstanceOf: CHEMEDMedicationRequest
Title: "2-6 Medication Request with Medication Norvasc"
Description: "Example for MedicationRequest (PRE)"
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
* identifier.value = "urn:uuid:d41d72ba-2100-11e6-b67b-9e71128cae77"
* status = #active
* intent = #order
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/MonikaWegmueller"
* reasonCode.text = "-"
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosageInstruction[baseEntry].timing.repeat.when[0] = #MORN
* dosageInstruction[baseEntry].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dispenseRequest.validityPeriod.start = "2012-02-04"
* dispenseRequest.validityPeriod.end = "2012-05-03"
// substitution just as test case
* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#E "equivalent"
