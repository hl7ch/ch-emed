Instance: 2-1-Composition
InstanceOf: CHEMEDCompositionMedicationList
Title: "2-1 Composition for Medication List document"
Description: "Example for Composition"
Usage: #example
* id = "2-1-Composition"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference.reference = "Patient/MonikaWegmuellerRecipient"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17931678-20b4-11e6-b67b-9e71128cae77"
* status = #final
* type.coding[0] = $loinc#56445-0 "Medication summary Document"
* type.coding[+] = $sct#721912009 "Medication summary document (record artifact)"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T13:55:00+01:00"
* author.reference = "Device/ExampleDevice"
* title = "Medikationsliste"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[list].title = "Medikamentenliste"
* section[list].code = $loinc#10160-0 "History of Medication use Narrative"
* section[list].text.status = #generated
* section[list].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Anwendungsdauer</th><th>Behandlungsgrund</th></tr></thead><tbody><tr id=\"mtp.1\"><td id=\"mtp.1.brandedmedication\">Triatec</td><td id=\"mtp.1.ingredient\">Ramipril</td><td id=\"mtp.1.packageform\">Tbl</td><td id=\"mtp.1.dosequantity\">2.5 mg</td><td id=\"mtp.1.dosagemorning\">0.5</td><td id=\"mtp.1.dosagelunch\">0</td><td id=\"mtp.1.dosageevening\">0</td><td id=\"mtp.1.dosagenight\">0</td><td id=\"mtp.1.routecode\">oral</td><td id=\"mtp.1.note\"/><td id=\"mtp.1.datefromto\"/><td id=\"mtp.1.reason\">Bluthochdruck</td></tr></tbody></table></div>"
* section[list].entry[medicationStatement].reference = "MedicationStatement/2-1-MedStatTriatec"
* section[list].entry[medicationDispense].reference = "MedicationDispense/2-1-MedDispTriatec"