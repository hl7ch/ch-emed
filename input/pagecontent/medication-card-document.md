The **Medication Card document** provides as complete an overview as possible of all current medications for a patient at a given point in time (such as the end of a hospitalization or other encounter). The purpose of this document is to inform the patient and clinicians (therapists, etc.) of the current medication information.
    
* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eCurrentMedication, different view
* [IHE Pharmacy Technical Framework Supplement: Community Medication List (PML)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PML.pdf)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

The representation of the Medication Card document SHALL be embedded as a PDF in PDF/A-1 or PDF/A-2 format. The required elements in the PDF correspond to the minimum data set in the IPAG report. In the FHIR profiles, the flag [mustSupport](index.html#mustsupport) is set to `true` for these elements.
    
{% include img.html img="medication-card-document.png" caption="Fig.: Medication Card document" width="40%" %}

#### Example instances
* 2-7 Medication Card document: [XML](Bundle-2-7-MedicationCard.xml.html), [JSON](Bundle-2-7-MedicationCard.json.html)
* 2-7 Medication Card document with UUID for fullUrl: [XML](Bundle-2-7-MedicationCard-UUIDfullUrl.xml.html), [JSON](Bundle-2-7-MedicationCard-UUIDfullUrl.json.html)

### Profiles
* [CH EMED Medication Card Document](StructureDefinition-ch-emed-document-medicationcard.html)
* [CH EMED Medication Card Composition](StructureDefinition-ch-emed-composition-medicationcard.html)
* [CH EMED MedicationStatement (CARD)](StructureDefinition-ch-emed-medicationstatement-card.html)
* [CH EMED Medication](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage](StructureDefinition-ch-emed-dosage.html)
* [CH EMED Dosage Split](StructureDefinition-ch-emed-dosage-split.html)
