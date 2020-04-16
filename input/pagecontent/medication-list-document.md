The **Medication List document** aims to fully comprise the current medication of a patient. It consists of Medication Treatment Plan, Medication Prescription, Medication Dispense and Pharmaceutical Advice entries.

* IPAG report: eCurrentMedication
* IHE Pharmacy Profil: PML (Pharmacy Medication List)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-list-document.png" caption="Fig.: Medication List document" width="40%" %}

* Profile: [Medication List document](StructureDefinition-ch-emed-document-medicationlist.html)
* Example Medication List document (xml): [2-1](Bundle-2-1-MedicationList.xml.html)