The **Medication Prescription document** describes the content and format of a Prescription document generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE).

* IPAG report: eRezept
* IHE Pharmacy Profil: PRE (Prescription)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-prescription-document.png" caption="Fig.: Medication Prescription document" width="40%" %}

* Profile: [Medication Prescription document](StructureDefinition-ch-emed-document-medicationprescription.html)
* Example Medication Prescription document (xml): [2-6](Bundle-2-6-MedicationPrescription.xml.html)