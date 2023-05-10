Instance: 2-4-Composition
InstanceOf: CHEMEDCompositionMedicationDispense
Title: "2-4 Composition for Medication Dispense document"
Description: "Example for Composition"
Usage: #example
* id = "2-4-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d8143fea-4778-11e6-beb8-9e71128cae77"
* status = #final
* type.coding[0] = $loinc#60593-1 "Medication dispensed.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* type.coding[=].version = "http://snomed.info/sct/2011000195101"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Abgabe"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality.extension.valueCodeableConcept.coding.version = "http://snomed.info/sct/2011000195101"
* confidentiality = #N

* section[dispense].title = "Abgabe eines Medikaments"
* section[dispense].code = $loinc#60590-7 "Medication dispensed.brief Document"
* section[dispense].text.status = #generated
* section[dispense].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Anzahl Packungen</th><th>Packungsgrösse</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Kommentar</th><th>Behandlungsrund</th><th>Datum/Zeit der Abgabe/ Anwendung</th><th>Identifikation des Empfängers</th></tr></thead><tbody><tr id=\"dis.1\"><td id=\"dis.1.brandedmedication\">Beloc Zok</td><td id=\"dis.1.ingredient\">Metoprolol</td><td id=\"dis.1.packageform\">Ret Tbl</td><td id=\"dis.1.dosequantity\">50 mg</td><td id=\"dis.1.nopackages\">1</td><td id=\"dis.1.packagesize\">30 Stk</td><td id=\"dis.1.dosagemorning\">1</td><td id=\"dis.1.dosagelunch\">0</td><td id=\"dis.1.dosageevening\">0.5</td><td id=\"dis.1.routecode\">oral</td><td id=\"dis.1.note\"/><td id=\"dis.1.datefromto\"/><td id=\"dis.1.reason\">Bluthochdruck</td><td id=\"dis.1.dipsensedate\"/><td id=\"dis.1.dipsenseto\"/></tr></tbody></table></div>"
* section[dispense].entry.reference = "MedicationDispense/2-4-MedDispBeloczok"