Instance: 1-1-MedStatTriatec
InstanceOf: CHEMEDMedicationStatement
Title: "1-1 Medication Statement with Medication Triatec"
Description: "Example for MedicationStatement (MTP) - Use case step 1-1: The record of the medication Triatec, to be taken by Monika Wegmüller in the future."
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
* status = #active
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2011-11-29T11:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].method = $edqm#0019	"Swallowing"
* dosage[baseEntry].method.text = "Schlucken"
* dosage[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
