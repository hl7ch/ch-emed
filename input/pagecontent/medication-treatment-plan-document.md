The **Medication Treatment Plan document** describes ONE medication of a patient, a medication that has been, is or will be taken by the patient.

* IPAG report: eMedicationTreatmentPlan
* IHE Pharmacy Profil: MTP (Medication Treatment Plan)
    

### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-treatment-plan-document.png" caption="Fig.: Medication Treatment Plan document" width="40%" %}

* Profile: [Medication Treatment Plan document](StructureDefinition-ch-emed-document-medicationtreatmentplan.html)
* Example Medication Treatment Plan document (xml): [1-1](Bundle-1-1-MedicationTreatmentPlan.xml.html), [2-3](Bundle-2-3-MedicationTreatmentPlan.xml.html), [2-5](Bundle-2-5-MedicationTreatmentPlan.xml.html)
