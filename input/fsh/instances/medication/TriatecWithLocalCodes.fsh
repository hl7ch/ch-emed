Instance: TriatecWithLocalCodes
InstanceOf: CHEMEDMedication
Title: "Triatec with local codes"
Description: "Example for Medication - Triatec with the defined GTIN and a local medication code."
Usage: #example
* meta.profile[0] = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication-medicationdispense"
* meta.profile[+] = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-medication"
* code.coding[0] = urn:oid:2.51.1.1#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* code.coding[+] = $localcode#"Local Code" "Triatec"
* code.text = "TRIATEC Tabl 2.5 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablette"
* amount.numerator = 20 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient.itemCodeableConcept = $sct#386872004 "Ramipril (substance)"
* ingredient.itemCodeableConcept.text = "Ramipril"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"