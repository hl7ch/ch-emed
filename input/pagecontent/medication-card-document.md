The **Medication Card document** describes the current medication of a patient, medications (MORE) that have been, is or will be taken by the patient.
    
* IPAG report: eCurrentMedication, different view


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.
    
{% include img.html img="medication-card-document.png" caption="Fig.: Medication Card document" width="40%" %}

* Profile: [Medication Card document](StructureDefinition-ch-emed-document-medicationcard.html)
* Example Medication Card document (xml): [2-7](Bundle-2-7-MedicationCard.xml.html)