Instance: 1-2-Composition
InstanceOf: CHEMEDCompositionMedicationDispense
Title: "1-2 Composition for Medication Dispense document"
Description: "Example for Composition"
Usage: #example
* id = "1-2-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:488bd23a-20c6-11e6-b67b-9e71128cae77"
* status = #final
* type.coding[0] = $loinc#60593-1 "Medication dispensed.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2011-11-29T11:01:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Abgabe"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[dispense].title = "Abgabe eines Medikaments"
* section[dispense].code = $loinc#60590-7 "Medication dispensed.brief Document"
* section[dispense].text.status = #generated
* section[dispense].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Anzahl Packungen</th><th>Packungsgrösse</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Behandlungsrund</th><th>Datum/Zeit der Abgabe/ Anwendung</th><th>Identifikation des Empfängers</th></tr></thead><tbody><tr id=\"dis.1\"><td id=\"dis.1.brandedmedication\">Triatec</td><td id=\"dis.1.ingredient\">Ramipril</td><td id=\"dis.1.dosequantity\">2.5 mg</td><td id=\"dis.1.packageform\">Tbl</td><td id=\"dis.1.nopackages\">1</td><td id=\"dis.1.packagesize\">20</td><td id=\"dis.1.dosagemorning\">0.5</td><td id=\"dis.1.dosagelunch\">0</td><td id=\"dis.1.dosageevening\">0</td><td id=\"dis.1.dosagenight\">0</td><td id=\"dis.1.routecode\">oral</td><td id=\"dis.1.note\"/><td id=\"dis.1.datefromto\"/><td id=\"dis.1.reason\">Bluthochdruck</td><td id=\"dis.1.dipsensedate\"/><td id=\"dis.1.dipsenseto\"/></tr></tbody></table></div>"
* section[dispense].entry.reference = "MedicationDispense/1-2-MedDispTriatec"