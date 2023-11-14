Instance: MedDispTriatec-WasSubstituted
InstanceOf: CHEMEDMedicationDispense
Title: "Medication Dispense was substituted"
Description: "Example for MedicationDispense (DIS): was substituted"
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3b3c967f-dc78-4ee2-b817-36bdb348ff63"
* status = #completed
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* performer.actor.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* quantity = 1 '{Package}' "Package"
* whenHandedOver = "2011-11-29"
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosageInstruction[baseEntry].timing.repeat.when = #MORN
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* substitution.wasSubstituted = true
* substitution.type = $v3-substanceAdminSubstitution#E "equivalent"