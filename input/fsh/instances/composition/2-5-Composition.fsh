Instance: 2-5-Composition
InstanceOf: CHEMEDCompositionMedicationTreatmentPlan
Title: "2-5 Composition for Medication Treatment Plan document"
Description: "Example for Composition with a person and a device as authors"
Usage: #example
* id = "2-5-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5712fffe-20c6-11e6-b67b-9e71128cae77"
* status = #final
* type.coding[0] = $loinc#77603-9 "Medication treatment plan.extended Document"
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)"
* type.coding[=].version = "http://snomed.info/sct/2011000195101"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* author[device].reference = "Device/ExampleDevice"
* title = "Therapieentscheid Medikation"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality.extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/2011000195101"
* confidentiality = #N

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $loinc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Anwendungsdauer</th><th>Behandlungsgrund</th></tr></thead><tbody><tr id=\"mtp.1\"><td id=\"mtp.1.brandedmedication\">Norvasc</td><td id=\"mtp.1.ingredient\">Amlodipin</td><td id=\"mtp.1.packageform\">Tbl</td><td id=\"mtp.1.dosequantity\">10 mg</td><td id=\"mtp.1.dosagemorning\">1</td><td id=\"mtp.1.dosagelunch\">0</td><td id=\"mtp.1.dosageevening\">1</td><td id=\"mtp.1.dosagenight\">0</td><td id=\"mtp.1.routecode\">oral</td><td id=\"mtp.1.note\"/><td id=\"mtp.1.datefromto\"/><td id=\"mtp.1.reason\">Bluthochdruck</td></tr></tbody></table></div>"
* section[treatmentPlan].entry.reference = "MedicationStatement/2-5-MedStatNorvasc"