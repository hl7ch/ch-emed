Instance: 2-3-MedStatBeloczok
InstanceOf: CHEMEDMedicationStatement
Title: "2-3 Medication Statement with Medication Beloc Zok"
Description: "Example for MedicationStatement (MTP) - Use case step 2-3: The record of the medication Beloc Zok, to be taken by Monika Wegmüller in the future."
Usage: #example
* contained = Beloczok
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:56c82cf2-123e-4401-80a4-28a5dd059979"
* status = #active
* medicationReference.reference = "#Beloczok"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2012-02-04T14:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"

* dosage[baseEntry].sequence = 1
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

* dosage[additionalEntry].sequence = 2
* dosage[additionalEntry].timing.repeat.when = #EVE
* dosage[additionalEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"