Instance: 2-3-Composition
InstanceOf: CHEMEDCompositionMedicationTreatmentPlan
Title: "2-3 Composition for Medication Treatment Plan document"
Description: "Example for Composition"
Usage: #example
* id = "2-3-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17931678-20b4-11e6-b67b-9e71128cca77"
* status = #final
* type.coding[0] = $loinc#77603-9 "Medication treatment plan.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Therapieentscheid Medikation"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $loinc#77604-7 "Medication treatment plan.brief Document"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Anwendungsdauer</th><th>Behandlungsgrund</th></tr></thead><tbody><tr id=\"mtp.1\"><td id=\"mtp.1.brandedmedication\">Beloc Zok</td><td id=\"mtp.1.ingredient\">Metoprolol</td><td id=\"mtp.1.packageform\"> Ret Tbl</td><td id=\"mtp.1.dosequantity\">50 mg</td><td id=\"mtp.1.dosagemorning\">1</td><td id=\"mtp.1.dosagelunch\">0</td><td id=\"mtp.1.dosageevening\">0.5</td><td id=\"mtp.1.dosagenight\">0</td><td id=\"mtp.1.routecode\">oral</td><td id=\"mtp.1.note\"/><td id=\"mtp.1.datefromto\"/><td id=\"mtp.1.reason\">Bluthochdruck</td></tr></tbody></table></div>"
* section[treatmentPlan].entry.reference = "MedicationStatement/2-3-MedStatBeloczok"