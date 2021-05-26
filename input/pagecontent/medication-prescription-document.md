The **Medication Prescription document** describes the content and format of a Prescription document generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE).

* IPAG report: eRezept
* IHE Pharmacy Profil: PRE (Prescription)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-prescription-document.png" caption="Fig.: Medication Prescription document" width="40%" %}

#### Example instances
* 2-6 Medication Prescription document: [XML](Bundle-2-6-MedicationPrescription.xml.html), [JSON](Bundle-2-6-MedicationPrescription.json.html)

### Profiles
* [CH EMED Medication Prescription Document Profile](StructureDefinition-ch-emed-document-medicationprescription.html)
* [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
* [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
* [CH EMED Medication Profile](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage Non-Structured Profile](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
* [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
