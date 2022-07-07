### Introduction
This implemenation guide is based on the [CDA-CH-EMED eMedication](https://art-decor.org/art-decor/decor-project--cdachemed-) [ART-DECOR®](https://www.art-decor.org/mediawiki/index.php/Main_Page) specification which has been [published by eHealth Suisse](http://ehealthsuisse.art-decor.org/).   
[CDA-CH-EMED](https://art-decor.org/art-decor/decor-project--cdachemed-) defines the documents for the exchange of medication information in the context of the EPR (electronic patient record) in Switzerland. The documents are based on the IHE Pharmacy Technical Framework modelled and specialized in the Building Block Repository [CH-PHARM](https://art-decor.org/art-decor/decor-project--ch-pharm-). Base for this modelling was the report from [IPAG eMedikation, 7.6.2017](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf) and the work of IPAG/eHealth Suisse.

The CH EMED implementation guide describes the FHIR representation of the defined **documents for the exchange of medication information**. This implementation guide is dependent on [CH Core](http://fhir.ch/ig/ch-core/index.html) and [CH EPR Term](http://fhir.ch/ig/ch-epr-term/index.html), which describe the Swiss specific context, especially related to the Swiss electronic patient record.

The following documents have been defined:
- [Medication Treatment Plan document](medication-treatment-plan-document.html)
- [Medication Prescription document](medication-prescription-document.html)
- [Medication Dispense document](medication-dispense-document.html)
- [Pharmaceutical Advice document](pharmaceutical-advice-document.html)
- [Medication List document](medication-list-document.html)
- [Medication Card document](medication-card-document.html)

<div markdown="1" class="stu-note">

This implementation guide is under ballot for STU 3 by [HL7 Switzerland](https://www.hl7.ch/) until September 30th, 2022 midnight. Please add your feedback via the 'Propose a change'-link in the footer on the page where you have comments.

[Significant Changes, Open and Closed Issues](changelog.html)

</div>


**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### MustSupport
For all elements listed in the **minimum data set in the [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf)** the corresponding FHIR elements 'mustSupport' flag have been set to `true`. 'MustSupport' flags are currently only defined for the [Medication Card document](medication-card-document.html#fhir-document-bundle).

#### Meaning of the Flag MustSupport for this Implementation Guide
The flag [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) follows the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). It demands that the content creator **must support these elements if they are known**. If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted. A receiving application may ignore the information conveyed by the element. A receiving application shall not raise an error solely due to the presence or absence of the element. 

#### Implication of MustSupport to the Original Representation
 The original representation of the [Medication Card document](medication-card-document.html#fhir-document-bundle) document must be embedded as a PDF in PDF/A-1 or PDF/A-2 format. If elements of the minimum data set in the IPAG report are provided in the bundle, they are also required to be represented in the original representation (PDF).

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Swiss FHIR Implementers Community](https://www.fhir.ch)
* [HL7 Switzerland](https://www.hl7.ch)
* [eHealth Suisse](https://www.e-health-suisse.ch/startseite.html)


### Copyright
This artefact includes content from SNOMED Clinical Terms&reg; (SNOMED CT&reg;) which is copyright of the 
International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must 
have the appropriate SNOMED CT Affiliate license - for more information contact 
http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org.

This artefact includes content from LOINC®. This content LOINC® is copyright © 1995 Regenstrief Institute, 
Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.