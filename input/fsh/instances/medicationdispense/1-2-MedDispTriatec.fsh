Instance: 1-2-MedDispTriatec
InstanceOf: CHEMEDMedicationDispense
Title: "1-2 Medication Dispense with Medication Triatec"
Description: "Example for MedicationDispense (DIS)"
Usage: #example
* contained = Triatec
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:488bd23a-20c6-11e6-b67b-9e71128cae77"
* status = #completed
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/MonikaWegmueller"
* quantity.value = 1
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosageInstruction[baseEntry].timing.repeat.when = #MORN
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

// substitution just as test case
* substitution.wasSubstituted = true
* substitution.type = $v3-substanceAdminSubstitution#E "equivalent"