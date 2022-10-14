### Introduction
The CH EMED implementation guide describes the FHIR representation of the defined **documents for the exchange of medication information** in the context of the EPR (electronid patient record) in Switzerland. This implementation guide is dependent on [CH Core](http://fhir.ch/ig/ch-core/index.html) and [CH EPR Term](http://fhir.ch/ig/ch-epr-term/index.html), which describe the Swiss specific context, especially related to the Swiss EPR.

Initially this implementation guide was based on the [CDA-CH-EMED eMedication](https://art-decor.org/art-decor/decor-project--cdachemed-) [ART-DECOR®](https://www.art-decor.org/mediawiki/index.php/Main_Page) specification which has been [published by eHealth Suisse](http://ehealthsuisse.art-decor.org/). [CDA-CH-EMED](https://art-decor.org/art-decor/decor-project--cdachemed-) defined the eMedication documents for the information exchange in the context of the EPR in Switzerland. The documents were based on the IHE Pharmacy Technical Framework modelled and specialized in the Building Block Repository [CH-PHARM](https://art-decor.org/art-decor/decor-project--ch-pharm-). Base for this modelling was the report from [IPAG eMedikation, 7.6.2017](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf) and the work of IPAG/eHealth Suisse.

Due to difficulties in modeling and mapping, the further development of the specifications, especially in the area of dosage, has been difficult. This and the fact that the format CDA-CH-EMED was only little in use, led then to the fact that the CDA format was abandoned and the exchange format on the basis of FHIR was developed further.

#### Scope
The following documents have been defined (and described in more detail on the respective subsections):
- [Medication Treatment Plan document](medication-treatment-plan-document.html)
- [Medication Prescription document](medication-prescription-document.html)
- [Medication Dispense document](medication-dispense-document.html)
- [Pharmaceutical Advice document](pharmaceutical-advice-document.html)
- [Medication List document](medication-list-document.html)
- [Medication Card document](medication-card-document.html)

The use case ([de](usecase-german.html), [fr](usecase-french.html)) illustrates the processes related to medication. In successive steps, situations are depicted in which the various eMedication documents are used. For each step, the structured FHIR examples are provided.   

To explain the different focus areas in more detail, there is a guidance section with the following topics:
* [Dosage](dosage.html)
* [Repeated Dsipense (Prescriptio)](repeated-dispense.html)
* [Different Authors](different-authors.html)

<div markdown="1" class="stu-note">

[Significant changes, open and closed issues](changelog.html)

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