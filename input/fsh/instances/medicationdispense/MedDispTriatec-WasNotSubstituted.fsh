Instance: MedDispTriatec-WasNotSubstituted
InstanceOf: CHEMEDMedicationDispense
Title: "Medication Dispense was not substituted"
Description: "Example for MedicationDispense (DIS): was not substituted"
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ccdc8558-3586-4018-ab3a-eb8f24a27835"
* status = #completed
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* quantity = 1 '{Package}' "Package"
* whenHandedOver = "2011-11-29"
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosageInstruction[baseEntry].timing.repeat.when = #MORN
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* substitution.wasSubstituted = false