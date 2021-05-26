The **Medication Dispense document** describes the direct dispensation of ONE drug to a patient or legitimized third party with regard to a later application of the product by a qualified health professional.
    
* IPAG report: eDispense
* IHE Pharmacy Profil: DIS (Dispense)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-dispense-document.png" caption="Fig.: Medication Dispense document" width="40%" %}

#### Example instances
* 1-1 Medication Dispense document: [XML](Bundle-1-2-MedicationDispense.xml.html), [JSON](Bundle-1-2-MedicationDispense.json.html)
* 2-4 Medication Dispense document: [XML](Bundle-2-4-MedicationDispense.xml.html), [JSON](Bundle-2-4-MedicationDispense.json.html)

### Profiles
* [CH EMED Medication Dispense Document Profile](StructureDefinition-ch-emed-document-medicationdispense.html)
* [CH EMED Medication Dispense Composition Profile](StructureDefinition-ch-emed-composition-medicationdispense.html)
* [CH EMED MedicationDispense Profile](StructureDefinition-ch-emed-medicationdispense.html)
* [CH EMED Medication Profile (MedicationDispense)](StructureDefinition-ch-emed-medication-medicationdispense.html)
* [CH EMED Dosage Non-Structured Profile](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Profile Normal Dosing](StructureDefinition-ch-emed-dosage-structured-normal.html)
* [CH EMED Dosage Structured Profile Split Dosing](StructureDefinition-ch-emed-dosage-structured-split.html)
