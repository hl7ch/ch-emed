Instance: AsNeededWithMaxDose
InstanceOf: CHEMEDMedicationStatement
Title: "Medication Statement with a medication in reserve and a maximum dosage"
Description: "Example for MedicationStatment - Nitrostat with the dosage instruction: 'Take 1 tablet as needed for chest pain, maximum 3 tablets in 15 minutes'."
Usage: #example
* contained = Nitrostat
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e5adf8d0-99fd-4bc6-b089-da7f7075d3be"
* status = #completed
* medicationReference.reference = "#Nitrostat"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2022-11-01"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Chest pain"
* dosage[baseEntry].patientInstruction = "Administer one tablet under the tongue at the first sign of an acute anginal attack. \r\n                                One additional tablet may be administered every 5 minutes until relief is obtained. \r\n                                No more than three tablets are recommended within a 15-minute period."
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2022-11-01"
* dosage[baseEntry].asNeededBoolean = true
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"