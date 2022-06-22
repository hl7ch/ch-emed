The **Medication Prescription document** describes the content and format of a Prescription document generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE).

* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eRezept
* [IHE Pharmacy Technical Framework Supplement: Community Prescription (PRE)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PRE.pdf)
* [CDA-CH-EMED Medication Prescription document](https://art-decor.org/art-decor/decor-templates--cdachemed-?section=templates&id=2.16.756.5.30.1.1.10.1.4)  

### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

The representation of the Medication Prescription document SHALL be embedded as a PDF in PDF/A-1 or PDF/A-2 format.


{% include img.html img="medication-prescription-document.png" caption="Fig.: Medication Prescription document" width="40%" %}

#### Example instances
* 2-6 Medication Prescription document: [XML](Bundle-2-6-MedicationPrescription.xml.html), [JSON](Bundle-2-6-MedicationPrescription.json.html)

### Profiles
* [CH EMED Medication Prescription Document](StructureDefinition-ch-emed-document-medicationprescription.html)
* [CH EMED Medication Prescription Composition](StructureDefinition-ch-emed-composition-medicationprescription.html)
* [CH EMED MedicationRequest](StructureDefinition-ch-emed-medicationrequest.html)
* [CH EMED Medication](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage Non-Structured](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Normal Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
* [CH EMED Dosage Structured Split Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
