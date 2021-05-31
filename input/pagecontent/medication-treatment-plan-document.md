The **Medication Treatment Plan document** describes ONE medication of a patient, a medication that has been, is or will be taken by the patient.

* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eMedicationTreatmentPlan
* [IHE Pharmacy Technical Framework Supplement: Community Medication Treatment Plan
(MTP)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_MTP.pdf)
* [CDA-CH-EMED Medication Treatment Plan document](https://art-decor.org/art-decor/decor-templates--cdachemed-?section=templates&id=2.16.756.5.30.1.1.10.1.7)  

### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-treatment-plan-document.png" caption="Fig.: Medication Treatment Plan document" width="40%" %}

#### Example instances
* 1-1 Medication Treatment Plan document: [XML](Bundle-1-1-MedicationTreatmentPlan.xml.html), [JSON](Bundle-1-1-MedicationTreatmentPlan.json.html)
* 2-3 Medication Treatment Plan document: [XML](Bundle-2-3-MedicationTreatmentPlan.xml.html), [JSON](Bundle-2-3-MedicationTreatmentPlan.json.html)
* 2-5 Medication Treatment Plan document: [XML](Bundle-2-5-MedicationTreatmentPlan.xml.html), [JSON](Bundle-2-5-MedicationTreatmentPlan.json.html)


### Profiles
* [CH EMED Medication Treatment Plan Document Profile](StructureDefinition-ch-emed-document-medicationtreatmentplan.html)
* [CH EMED Medication Treatment Plan Composition Profile](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)
* [CH EMED MedicationStatement Profile (Medication Treatment Plan document)](StructureDefinition-ch-emed-medicationstatement-treatmentplan.html)
* [CH EMED Medication Profile](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage Non-Structured Profile](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Profile Normal Dosing](StructureDefinition-ch-emed-dosage-structured-normal.html)
* [CH EMED Dosage Structured Profile Split Dosing](StructureDefinition-ch-emed-dosage-structured-split.html)
