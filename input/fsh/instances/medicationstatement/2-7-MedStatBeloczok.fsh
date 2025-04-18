Instance: 2-7-MedStatBeloczok
InstanceOf: CHEMEDMedicationStatementCard
Title: "2-7 Medication Statement with Medication Beloc Zok"
Description: "Example for MedicationStatement (CARD) - Use case step 2-7: The record of Beloc Zok as part of the current medication of Monika Wegmüller."
Usage: #example
* contained = Beloczok
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:56c82cf2-123e-4401-80a4-28a5dd059979"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:56c82cf2-123e-4401-80a4-28a5dd059979"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:af9e960d-99bf-46d5-8a72-8f863512246b"
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

