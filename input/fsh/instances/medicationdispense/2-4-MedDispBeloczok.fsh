Instance: 2-4-MedDispBeloczok
InstanceOf: CHEMEDMedicationDispense
Title: "1-2 Medication Dispense with Medication Beloc Zok"
Description: "Example for MedicationDispense (DIS) - Use case step 2-4: The record of the supply of Beloc Zok."
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
* identifier.value = "urn:uuid:874d3dae-2304-499a-96e3-f7e139480991"
* status = #completed
* medicationReference.reference = "#Beloczok"
* subject.reference = "Patient/MonikaWegmueller"
* quantity = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* performer.actor.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* whenHandedOver = "2012-02-04T14:00:00+01:00"

* dosageInstruction[baseEntry].sequence = 1
* dosageInstruction[baseEntry].patientInstruction = "-"
* dosageInstruction[baseEntry].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosageInstruction[baseEntry].timing.repeat.when = #MORN
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry].route.text = "zum Einnehmen"
* dosageInstruction[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[additionalEntry].sequence = 2
* dosageInstruction[additionalEntry].timing.repeat.when = #EVE
* dosageInstruction[additionalEntry].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
// substitution just as test case
* substitution.wasSubstituted = true
* substitution.type = $v3-substanceAdminSubstitution#E "equivalent"
