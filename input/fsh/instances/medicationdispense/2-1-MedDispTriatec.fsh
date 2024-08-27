Instance: 2-1-MedDispTriatec
InstanceOf: CHEMEDMedicationDispenseList
Title: "2-1 Medication Dispense with Medication Triatec"
Description: "Example for MedicationDispense (LIST)"
Usage: #example
* contained = Triatec
// MedicationDispense.extension:treatmentPlan
* extension[treatmentPlan].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[id].valueIdentifier.value = "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[treatmentPlan].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
// MedicationDispense.extension:parentDocument
* extension[parentDocument].extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[id].valueIdentifier.value = "urn:uuid:d428e837-46fe-49cc-9212-245d153c68ee"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[parentDocument].extension[externalDocumentId].valueIdentifier.value = "urn:uuid:d428e837-46fe-49cc-9212-245d153c68ee"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d428e837-46fe-49cc-9212-245d153c68ee"
* status = #completed
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* performer.actor.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* quantity = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* whenHandedOver = "2011-11-29T11:01:00+01:00"
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosageInstruction[baseEntry].timing.repeat.when = #MORN
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

// substitution just as test case
* substitution.wasSubstituted = true
* substitution.type = $v3-substanceAdminSubstitution#E "equivalent"
