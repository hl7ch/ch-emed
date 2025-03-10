Instance: 2-5-MedStatNorvasc
InstanceOf: CHEMEDMedicationStatement
Title: "2-5 Medication Statement with Medication Norvasc"
Description: "Example for MedicationStatement (MTP) - Use case step 2-5: The record of the medication Norvasc, to be taken by Monika Wegmüller in the future."
Usage: #example
* contained = Norvasc
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0e9a0b8a-8306-4e35-bb92-0ba424696349"
* status = #active
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2012-02-04T14:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosage[baseEntry].timing.repeat.when[0] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"