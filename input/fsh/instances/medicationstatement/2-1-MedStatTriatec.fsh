Instance: 2-1-MedStatTriatec
InstanceOf: CHEMEDMedicationStatementList
Title: "2-1 Medication Statement with Medication Triatec"
Description: "Example for MedicationStatement (LIST)"
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* status = #active
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"