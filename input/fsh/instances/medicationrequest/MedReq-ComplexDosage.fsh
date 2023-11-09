Instance: MedReq-ComplexDosage
InstanceOf: CHEMEDMedicationRequest
Title: "Medication Request - Complex Dosage"
Description: "Example for MedicationRequest - Complex Dosage (free text), in reserve, without timing"
Usage: #example
* contained = Wallwurz
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2ed67958-ecf4-4fb7-adf5-e2e8c36ca736"
* status = #active
* intent = #order
* medicationReference.reference = "#Wallwurz"
* subject.reference = "Patient/MonikaWegmueller"
* authoredOn = "2020-02-02"
* requester.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* reasonCode.text = "Rheumatischen Beschwerden"
* dosageInstruction[baseEntry].patientInstruction = "Je nach Grösse der betroffenen Stellen ein 2-5 cm langes Stück Amavita Wallwurz-Gel bis 5-mal täglich auf die betroffenen Stellen einreiben und trocknen lassen."
* dosageInstruction[baseEntry].asNeededBoolean = true
* dosageInstruction[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20003000 "Cutaneous use"
* dosageInstruction[baseEntry].route.text = "Anwendung auf der Haut"
* dosageInstruction[baseEntry].doseAndRate.doseRange.low = 2 'cm' "centimeter"
* dosageInstruction[baseEntry].doseAndRate.doseRange.high = 5 'cm' "centimeter"