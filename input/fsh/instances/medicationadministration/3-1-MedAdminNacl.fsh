Instance: 3-1-MedAdminNacl
InstanceOf: CHEMEDMedicationAdministration
Title: "Medication Administration NaCL"
Description: "Example for MedicationAdministration (DIS)"
Usage: #example
* contained = Nacl
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c276c2af-afab-4a78-859b-485324584b37"
* status = #completed
* medicationReference.reference = "#Nacl"
* subject = Reference(MaxMoser)
* effectiveDateTime = "2020-02-03T14:32:00+01:00"
* performer.actor = Reference(PriskaHuberAtRettungsdienst)
// * reasonCode.text = "Schmerzbehandlung"
* dosage.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage.route.text = "intravenöse Anwendung"
* dosage.dose = 0.5 '{Package}' "Package"
