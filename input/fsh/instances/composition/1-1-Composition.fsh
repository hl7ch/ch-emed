Instance: 1-1-Composition
InstanceOf: CHEMEDCompositionMedicationTreatmentPlan
Title: "1-1 Composition for Medication Treatment Plan document"
Description: "Example for Composition"
Usage: #example
* id = "1-1-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* status = #final
* type.coding[0] = $loinc#77603-9 "Medication treatment plan.extended Document" // patternCC
* type.coding[+] = $sct#761931002 "Medication treatment plan report (record artifact)" // invariant
* subject.reference = "Patient/MonikaWegmueller"
* date = "2011-11-29T11:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Therapieentscheid Medikation"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $loinc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Anwendungsdauer</th><th>Behandlungsgrund</th></tr></thead><tbody><tr id=\"mtp.1\"><td id=\"mtp.1.brandedmedication\">Triatec</td><td id=\"mtp.1.ingredient\">Ramipril</td><td id=\"mtp.1.packageform\">Tbl</td><td id=\"mtp.1.dosequantity\">2.5 mg</td><td id=\"mtp.1.dosagemorning\">0.5</td><td id=\"mtp.1.dosagelunch\">0</td><td id=\"mtp.1.dosageevening\">0</td><td id=\"mtp.1.dosagenight\">0</td><td id=\"mtp.1.routecode\">oral</td><td id=\"mtp.1.note\"/><td id=\"mtp.1.datefromto\"/><td id=\"mtp.1.reason\">Bluthochdruck</td></tr></tbody></table></div>"
* section[treatmentPlan].entry.reference = "MedicationStatement/1-1-MedStatTriatec"