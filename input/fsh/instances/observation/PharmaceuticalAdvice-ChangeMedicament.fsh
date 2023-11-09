Instance: PharmaceuticalAdvice-ChangeMedicament
InstanceOf: CHEMEDObservation
Title: "Observation for Pharmaceutical Advice document"
Description: "Example for Observation (PADV): CHANGE with new MedicationRequest"
Usage: #example

// Reference to 2-6 Medication Prescription document with original medication - NORVASC Tabl 10 mg
* extension[0].extension[0].url = "id"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:d41d72ba-2100-11e6-b67b-9e71128cae77"
* extension[=].extension[+].url = "externalDocumentId"
* extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueIdentifier.value = "urn:uuid:d41d72ba-2100-11e6-b67b-9e71128cae77"
* extension[=].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-prescription"

// Reference to new MedicationRequest with changed medication (substitution) - AMLODIPIN Spirig HC Tabl 10 mg
* extension[+].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed"
* extension[=].valueReference.reference = "MedicationRequest/MedReq-ChangeMedication"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9a34302b-49d1-4098-adf8-cea5302ab26b"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* subject.reference = "Patient/MonikaWegmueller"
* performer.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* effectiveDateTime = "2012-02-04T14:00:00+01:00"
* issued = "2012-02-04T14:00:00+01:00"
* note.text = "Generika: Amlodipin anstatt Norvasc"