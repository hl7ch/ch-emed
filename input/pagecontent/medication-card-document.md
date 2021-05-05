The **Medication Card document** describes the current medication of a patient, medications (MORE) that have been, is or will be taken by the patient.
    
* IPAG report: eCurrentMedication, different view


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.
    
{% include img.html img="medication-card-document.png" caption="Fig.: Medication Card document" width="40%" %}

#### Example instances
* 2-7 Medication Card document: [XML](Bundle-2-7-MedicationCard.xml.html), [JSON](Bundle-2-7-MedicationCard.json.html)

### Profiles
* [CH EMED Medication Card Document Profile](StructureDefinition-ch-emed-document-medicationcard.html)
* [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html)
* [CH EMED MedicationStatement Profile (Medication Card document)](StructureDefinition-ch-emed-medicationstatement-card.html)
* [CH EMED Medication Profile](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage Non-Structured Profile](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Profile (MedicationStatement / MedicationDispense)](StructureDefinition-ch-emed-dosage-structured.html)
