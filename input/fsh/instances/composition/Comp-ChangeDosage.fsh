Instance: Comp-ChangeDosage
InstanceOf: CHEMEDCompositionPharmaceuticalAdvice
Title: "Composition - Change Dosage"
Description: "Example for Composition"
Usage: #example
* id = "Comp-ChangeDosage"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:adab8d2d-ae14-48d6-8d15-b726d6ea82c5"
* status = #final
* type.coding[0] = $loinc#61356-2 "Medication pharmaceutical advice.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MonikaWegmueller)
* date = "2012-02-04T14:00:00+01:00"
* author[person] = Reference(FamilienHausarztAtHausarzt)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"

* section[pharmaceuticalAdvice].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice].code = $loinc#61357-0 "Medication pharmaceutical advice.brief Document"
* section[pharmaceuticalAdvice].text.status = #generated
* section[pharmaceuticalAdvice].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                            <table>\n                                <thead>\n                                    <tr>\n                                        <th>Präpartename</th>\n                                        <th>Wirkstoffname</th>\n                                        <th>Galenische Form</th>\n                                        <th>Dosis pro Einheit</th>\n                                        <th>Dos.Morgen</th>\n                                        <th>Dos.Mittag</th>\n                                        <th>Dos.Abend</th>\n                                        <th>Dos.Nacht</th>\n                                        <th>Verabreichungsweg</th>\n                                        <th>Anwendungsdauer</th>\n                                        <th>Behandlungsgrund</th>\n                                        <th>Kommentar</th>\n                                    </tr>\n                                </thead>\n                                <tbody>\n                                    <tr id=\"padv.1\">\n                                        <td id=\"padv.1.brandedmedication\">Triatec</td>\n                                        <td id=\"padv.1.ingredient\">Ramipril</td>\n                                        <td id=\"padv.1.packageform\">Tbl</td>\n                                        <td id=\"padv.1.dosequantity\">2.5 mg</td>\n                                        <td id=\"padv.1.dosagemorning\">1</td>\n                                        <td id=\"padv.1.dosagelunch\">0</td>\n                                        <td id=\"padv.1.dosageevening\">0</td>\n                                        <td id=\"padv.1.dosagenight\">0</td>\n                                        <td id=\"padv.1.routecode\">oral</td>\n                                        <td id=\"padv.1.datefromto\"/>\n                                        <td id=\"padv.1.reason\">Bluthochdruck</td>\n                                        <td id=\"padv.1.note\">Dosierungsänderung: Morgens 1 Tablette anstatt 0.5 Tablette</td>\n                                    </tr>\n                                </tbody>\n                            </table>\n                        </div>"
* section[pharmaceuticalAdvice].entry = Reference(Obs-ChangeDosage)
