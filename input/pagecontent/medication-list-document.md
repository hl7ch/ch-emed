The **Medication List document** aims to fully comprise the current medication of a patient. It consists of Medication Treatment Plan, Medication Prescription, Medication Dispense and Pharmaceutical Advice entries.

* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eCurrentMedication
* [IHE Pharmacy Technical Framework Supplement: Community Medication List (PML)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PML.pdf)
* [CDA-CH-EMED Medication List document](https://art-decor.org/art-decor/decor-templates--cdachemed-?section=templates&id=2.16.756.5.30.1.1.10.1.13)  


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-list-document.png" caption="Fig.: Medication List document" width="40%" %}

#### Example instances
* 2-1 Medication List document: [XML](Bundle-2-1-MedicationList.xml.html), [JSON](Bundle-2-1-MedicationList.json.html)

### Profiles
* [CH EMED Medication List Document](StructureDefinition-ch-emed-document-medicationlist.html)
* [CH EMED Medication List Composition](StructureDefinition-ch-emed-composition-medicationlist.html)
* [CH EMED MedicationStatement (Medication Treatment Plan document)](StructureDefinition-ch-emed-medicationstatement-treatmentplan.html)
* [CH EMED MedicationRequest](StructureDefinition-ch-emed-medicationrequest.html)
* [CH EMED MedicationDispense](StructureDefinition-ch-emed-medicationdispense.html)
* [CH EMED Observation](StructureDefinition-ch-emed-observation.html)
