Instance: 3-1-MedAdminTodo
InstanceOf: CHEMEDMedicationAdministration
Title: "Medication Administration TODO"
Description: "Example for MedicationAdministration (DIS)"
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c276c2af-afab-4a78-859b-485324584b37"
* status = #completed
* medicationReference.reference = "#Triatec"
* subject = Reference(MonikaWegmueller)
* effectiveDateTime = "2023-11-10T13:00:00+01:00"
* performer.actor = Reference(FamilienHausarztAtHausarzt)
* reasonCode.text = "TODO"
* dosage.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage.route.text = "zum Einnehmen"
* dosage.dose = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

