Instance: MedicationWithATC
InstanceOf: CHEMEDMedication
Title: "Medication with ATC"
Description: "Example for Non-Swiss Medication with ATC code"
Usage: #example
* code = $atc#N02CC02 "naratriptan"
* code.text = "NaraDex 2,5 mg Filmtabletten"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"
* form.text = "Filmtablette"
* amount.numerator = 2 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient.itemCodeableConcept = $sct#363571003 "Naratriptan"
* ingredient.itemCodeableConcept.text = "Naratriptan"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"