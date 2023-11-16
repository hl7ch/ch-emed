Instance: 3-2-MedAdminFentanyl
InstanceOf: CHEMEDMedicationAdministration
Title: "Medication Administration Fentanyl"
Description: "Example for MedicationAdministration (DIS)"
Usage: #example
* contained = Fentanyl
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8ef0d745-e218-4636-abac-ea842ca6a421"
* status = #completed
* medicationReference.reference = "#Fentanyl"
* subject = Reference(MaxMoser)
* effectiveDateTime = "2020-02-03T14:32:00+01:00"
* performer.actor = Reference(PriskaHuberAtRettungsdienst)
* reasonCode.text = "Schmerzbehandlung"
* dosage.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage.route.text = "intravenöse Anwendung"
* dosage.dose = 1 http://snomed.info/sct#732978007 "Ampule (unit of presentation)"
