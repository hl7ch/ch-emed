Instance: MedReq-ChangeMedication
InstanceOf: CHEMEDMedicationRequestChanged
Title: "Medication Request - Changed Medication"
Description: "Example for MedicationRequest - Referenced from Observation: PADV 'CHANGE'"
Usage: #example
* contained = Amlodipin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9e5045e3-03a7-4885-a8e1-f3dc056af465"
* status = #active
* intent = #order
* medicationReference.reference = "#Amlodipin"
* subject.reference = "Patient/MonikaWegmueller"
* authoredOn = "2012-02-04T14:00:00+01:00"
* requester.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* supportingInformation.reference = "Observation/PharmaceuticalAdvice-ChangeMedicament"
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
