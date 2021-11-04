The **Medication Card document** describes the current medication of a patient, medications (MORE) that have been, is or will be taken by the patient.
    
* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eCurrentMedication, different view
* [IHE Pharmacy Technical Framework Supplement: Community Medication List (PML)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PML.pdf)
* [CDA-CH-EMED Medication Card document](https://art-decor.org/art-decor/decor-templates--cdachemed-?section=templates&id=2.16.756.5.30.1.1.10.1.3)  


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

The representation of the Medication Card document SHALL be embedded as a PDF in PDF/A-1 or PDF/A-2 format. The required elements in the PDF correspond to the minimum data set in the IPAG report. In the FHIR profiles, the flag [mustSupport](index.html#must-support) is set to `true` for these elements.
    
{% include img.html img="medication-card-document.png" caption="Fig.: Medication Card document" width="40%" %}

#### Example instances
* 2-7 Medication Card document: [XML](Bundle-2-7-MedicationCard.xml.html), [JSON](Bundle-2-7-MedicationCard.json.html)
* 2-7 Medication Card document with UUID for fullUrl: [XML](Bundle-2-7-MedicationCard-UUIDfullUrl.xml.html), [JSON](Bundle-2-7-MedicationCard-UUIDfulUrl.json.html)

### Profiles
* [CH EMED Medication Card Document Profile](StructureDefinition-ch-emed-document-medicationcard.html)
* [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html)
* [CH EMED MedicationStatement Profile (Medication Card document)](StructureDefinition-ch-emed-medicationstatement-card.html)
* [CH EMED Medication Profile](StructureDefinition-ch-emed-medication.html)
* [CH EMED Dosage Non-Structured Profile](StructureDefinition-ch-emed-dosage-nonstructured.html)
* [CH EMED Dosage Structured Profile Normal Dosing](StructureDefinition-ch-emed-dosage-structured-normal.html)
* [CH EMED Dosage Structured Profile Split Dosing](StructureDefinition-ch-emed-dosage-structured-split.html)
