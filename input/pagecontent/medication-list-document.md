The **Medication List document** aims to fully comprise the current medication of a patient. It consists of Medication Treatment Plan, Medication Prescription, Medication Dispense and Pharmaceutical Advice entries.

* IPAG report: eCurrentMedication
* IHE Pharmacy Profil: PML (Pharmacy Medication List)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-list-document.png" caption="Fig.: Medication List document" width="40%" %}

#### Example instances
* 2-1 Medication List document: [XML](Bundle-2-1-MedicationList.xml.html), [JSON](Bundle-2-1-MedicationList.json.html)

### Resource profiles
* [CH EMED Medication List Document Profile](StructureDefinition-ch-emed-document-medicationlist.html)
* [CH EMED Medication List Composition Profile](StructureDefinition-ch-emed-composition-medicationlist.html)
* [CH EMED MedicationStatement Profile (Medication Treatment Plan document)](StructureDefinition-ch-emed-medicationstatement-treatmentplan.html)
* [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
* [CH EMED MedicationDispense Profile](StructureDefinition-ch-emed-medicationdispense.html)
* [CH EMED Observation Profile](StructureDefinition-ch-emed-observation.html)
