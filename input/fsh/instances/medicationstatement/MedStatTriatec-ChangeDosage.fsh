Instance: MedStatTriatec-ChangeDosage
InstanceOf: CHEMEDMedicationStatementChanged
Title: "Medication Statement with changed dosage"
Description: "Example for MedicationStatment - A new MedicationStatement with the a new dosage. It is referenced from the Observation (PADV 'CHANGE') which includes the note to the change and it references the Observation itself."
Usage: #example
* contained = Amlodipin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* partOf.reference = "Observation/Obs-ChangeDosage"
* status = #active
* medicationReference.reference = "#Amlodipin"
* subject.reference = "Patient/MonikaWegmueller"
* dateAsserted = "2012-02-04T14:00:00+01:00"
* informationSource.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* reasonCode.extension.valueUrl = "#padv.1.reason"
* reasonCode.text = "Bluthochdruck"
* dosage[baseEntry].patientInstruction = "-"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2011-11-29"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].route.text = "zum Einnehmen"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"