<div markdown="1" class="stu-note">
This implementation guide is under STU ballot by [HL7 Switzerland](https://www.hl7.ch/) until September 24th, 2021 midnight. Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.
</div>

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

**Download**: You can download this implementation guide in npm format from [here](package.tgz).


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