
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU3 - v3.0.0 (2022-xx-xx)

#### Added / Updated
* Different authors:
   * [#113](https://github.com/hl7ch/ch-emed/issues/113): Mapping of the author of the medical decision and the author of the document for the Medication List document. 
      * Add separate profiles ([MedicationStatement](StructureDefinition-ch-emed-medicationstatement-list.html)/[MedicationDispense](StructureDefinition-ch-emed-medicationdispense-list.html)/[MedicationRequest](StructureDefinition-ch-emed-medicationrequest-list.html)/[Observation](StructureDefinition-ch-emed-observation-list.html)) for use in the Medication List document ([#114](https://github.com/hl7ch/ch-emed/issues/114)). 
      * [#133](https://github.com/hl7ch/ch-emed/issues/133): Use case for prescription authors clarified by the separate list profiles and guidance (without additional adaptation needed)
   * Add description/use cases for the use of the different authors at the different document levels (document/section/entry) under [Guidance - Different Authors](different-authors.html) and update the profiles/examples according to the guidance ([#113](https://github.com/hl7ch/ch-emed/issues/113)):
      * [MTP](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)/[PRE](StructureDefinition-ch-emed-composition-medicationprescription.html)/[DIS](StructureDefinition-ch-emed-composition-medicationdispense.html)/[PADV](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson) (remove CH EMED Practitioner &#124; CH Core Organization EPR &#124; Device)
         * Composition.section.author: dito
      * [CARD](StructureDefinition-ch-emed-composition-medicationcard.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; Device &#124; CH Core Patient EPR &#124; RelatedPerson) (remove CH EMED Practitioner &#124; CH Core Organization EPR)
         * Composition.section.author: remove this element from differential
         * Entries - Author document: use CH Core Extension (remove ch-emed-ext-documentauthor) ([#146](https://github.com/hl7ch/ch-emed/issues/146), [#114](https://github.com/hl7ch/ch-emed/issues/114))
         * Entries - Author medical decision: only allow PractitionerRole (remove ch-emed-ext-representedorganization) ([#114](https://github.com/hl7ch/ch-emed/issues/114))
      * [LIST](StructureDefinition-ch-emed-composition-medicationlist.html):
         * Composition.author: Reference(Device) (remove CH EMED Practitioner &#124; CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson &#124; CH Core Organization EPR) 
         * Composition.section.author: remove this element from differential
         * Entries: add seperate list profiles as mentioned above
   * [#132](https://github.com/hl7ch/ch-emed/issues/132), [#125](https://github.com/hl7ch/ch-emed/issues/125): Practitioner and his/her organization (Composition.author) are mapped via PractitionerRole (updated profiles: all Compositions, [PractitionerRole](StructureDefinition-ch-emed-practitionerrole.html), [Practitioner](StructureDefinition-ch-emed-practitioner.html), [Organization](StructureDefinition-ch-emed-organization.html))   
   * [#151](https://github.com/hl7ch/ch-emed/issues/151): Include various inputs on the topic
* [#72](https://github.com/hl7ch/ch-emed/issues/72): Add mapping for reserve medication as 'Dosage.asNeeded'
* [#161](https://github.com/hl7ch/ch-emed/issues/161): [Home](index.html): Include the new IG fragments (IP Statements/Cross Version Analysis/Dependency Table/Globals Table) and remove Copyright (new included in IP Statements)
      
#### Changed / Updated
* Update dependency to the current version of CH Core -> STU3 (v3.0.0)
* [#123](https://github.com/hl7ch/ch-emed/issues/123): Update of the [introduction](index.html#introduction) according to the current status 
* [#120](https://github.com/hl7ch/ch-emed/issues/120): Change mapping for patient instruction from '*Entry*.note' to 'Dosage.patientInstruction' to be able to map the annotation comment in the Medication Card document to '[MedicationStatemtent.note](StructureDefinition-ch-emed-medicationstatement-card.html)' 
   * [#116](https://github.com/hl7ch/ch-emed/issues/116): Update the description of '[Observation.note](StructureDefinition-ch-emed-observation.html)'.
* Allow additional elements in [CH EMED Dosage Non-Structured](StructureDefinition-ch-emed-dosage-nonstructured.html):
   * [#120](https://github.com/hl7ch/ch-emed/issues/120): 'patientInstruction' -> because the mapping from element '.note' has changed to 'Dosage.patientInstruction', this element must be allowed here 
   * [#117](https://github.com/hl7ch/ch-emed/issues/117): 'asNeededBoolean' -> allow the mapping for reserve medication
* [#150](https://github.com/hl7ch/ch-emed/issues/150): Due to the decision that the CDA format will no longer be supported, CDA specific elements have been removed/adapted:
   * Remove extensions from differential (since they are defined in the underlying CH Core EPR profiles, they can theoretically still be used): 
      * time-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time) in author elements (profiles/examples)
      * sectionId-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-sectionid) in Composition.section (profiles/examples) ([#155](https://github.com/hl7ch/ch-emed/issues/155))
      * dataEnterer-extension in Composition (profiles)
      * versionNumber-extension in Composition (profiles)
   * Remove mapping between CDA and FHIR in profiles ([#157](https://github.com/hl7ch/ch-emed/issues/157)) 
   * Remove the links to the CDA-CH-EMED documents (in the document tabs)

#### Fixed
* [#144](https://github.com/hl7ch/ch-emed/issues/144): Typo
* [#135](https://github.com/hl7ch/ch-emed/issues/135): Broken link
* [#160](https://github.com/hl7ch/ch-emed/issues/160): Add missing elements 'experimental=false' and 'description' to CodeSystems

#### Issues resolved without amendment
* [#119](https://github.com/hl7ch/ch-emed/issues/119): Update the mapping to CDA for the Observation is no longer necessary



### STU3 Ballot - v2.1.0 (2022-07-07)

#### Changed / Updated
* [#95](https://github.com/hl7ch/ch-emed/issues/95): Update description of Composition/Bundle.identifier
* [#86](https://github.com/hl7ch/ch-emed/issues/86): Update minimum cardinality of Composition.custodian (due to relaxation in the underlying CH Core profile)
* [#101](https://github.com/hl7ch/ch-emed/issues/101): Update profiles -> Composition.author.extension:time (according to update in CH Core)
* [#103](https://github.com/hl7ch/ch-emed/issues/103): Dosage - Do not allow unstructured dosage text when normal/split dosing
issue90-dosage
* [#90](https://github.com/hl7ch/ch-emed/issues/90): Dosage in Medication Prescription document - Relax minimum cardinality of Dosage.timing.repeat.boundsPeriod to 0
* [#106](https://github.com/hl7ch/ch-emed/issues/106): Improve slicing that info entry[x] warnings are not shown
* [#110](https://github.com/hl7ch/ch-emed/issues/110): Update title of the profiles for a better readability of the references
* Update value sets
   * [#89](https://github.com/hl7ch/ch-emed/issues/89): ActivePharmaceuticalIngredient -> fix typo (Nicotine)
   * [#94](https://github.com/hl7ch/ch-emed/issues/94): EDQM - RouteOfAdministration -> add EDQM code '20087000' (Extrapleural use)
   * [#93](https://github.com/hl7ch/ch-emed/issues/93): UnitCode -> add UCUM code 'a' (year)
   * UnitCode -> update the fr-CH display value for '732982009' from 'poche' to 'sac'
   * [#111](https://github.com/hl7ch/ch-emed/issues/111): UnitCode -> add UCUM code 'mo' (month)

#### Fixed
* [#97](https://github.com/hl7ch/ch-emed/issues/97): Typo
* [#92](https://github.com/hl7ch/ch-emed/issues/92): Typo



### STU2 - v2.0.0 (2022-02-11)
#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#72](https://github.com/hl7ch/ch-emed/issues/72) Representation of status "in reserve" (InRes) for a medication is missing.

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).
 
#### Added
* [#73](https://github.com/hl7ch/ch-emed/issues/73): Add warning if non-recommended timing-event codes are used in the structured dosage.
   * [CH EMED Dosage Structured Profile](StructureDefinition-ch-emed-dosage-structured.html) 
* [#76](https://github.com/hl7ch/ch-emed/issues/76): Elaboration of the repeated dispense.
   * [Additional tab with detailed description](repeated-dispense.html) 
   * Add element `MedicationRequest.dispenseRequest.validityPeriod` to be able to represent possible use cases ([profile](StructureDefinition-ch-emed-medicationrequest.html), [mapping to CDA](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-medicationrequest-mappings.html#mappings-for-cda-r2-http-hl7-org-v3-cda))

#### Changed / Updated
* [#64](https://github.com/hl7ch/ch-emed/issues/64): Dosage.timing.repeat.bounds[x] restricted to Period (start/end) instead of Duration, Range, Period to be equivalent to CDA.
   * [CH EMED Dosage Structured Profile](StructureDefinition-ch-emed-dosage-structured.html)
   * [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
   * [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
* [#75](https://github.com/hl7ch/ch-emed/issues/75): Set mustSupport = true for patient (Composition.subject) and author (Composition.author) of the Medication Card document, because they belong to the minimal data set of IPAG.
   * [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html)
* [#74](https://github.com/hl7ch/ch-emed/issues/74): Change the description of the identifiers of MedicationStatement, MedicationRequest, MedicationDispense and Observation (clear naming without relation to the naming of the equivalent CDA element).
   * [CH EMED MedicationStatement Profile](StructureDefinition-ch-emed-medicationstatement.html)
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
   * [CH EMED MedicationDispense Profile](StructureDefinition-ch-emed-medicationdispense.html) 
   * [CH EMED Observation Profile](StructureDefinition-ch-emed-observation.html)
* [#62](https://github.com/hl7ch/ch-emed/issues/62): Provide a [separate paragraph](index.html#mustsupport) on the flag mustSupport on the front page of the IG.
* [#76](https://github.com/hl7ch/ch-emed/issues/62): Set minimum cardinality for element `MedicationRequest.dispenseRequest.numberOfRepeatsAllowed` (and `MedicationRequest.dispenseRequest`) back to 0, according to changes in CDA.
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
* [#80](https://github.com/hl7ch/ch-emed/issues/80): Update references for the document author (Composition.author)
   * Change references for Composition.author from 'CH Core Practitioner Profile EPR' to 'CH EMED Practitioner Profile' and from 'CH Core Practitioner Role Profile' to 'CH EMED PractitionerRole Profile'.
      * [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html) 
      * [CH EMED Medication Dispense Composition Profile](StructureDefinition-ch-emed-composition-medicationdispense.html)
      * [CH EMED Medication List Composition Profile](StructureDefinition-ch-emed-composition-medicationlist.html)
      * [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
      * [CH EMED Medication Treatment Plan Composition Profile](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)
      * [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
   * Add profiles (derived from CH Core EPR profiles)
      * [CH EMED Practitioner Profile](StructureDefinition-ch-emed-practitioner.html): Practitioner.address 1..*, set MS
      * [CH EMED PractitionerRole Profile](StructureDefinition-ch-emed-practitionerrole.html): PractitionerRole.practitioner 1..1   

#### Fixed
* [#63](https://github.com/hl7ch/ch-emed/issues/63): Typo in constraint "ch-emed-sect-annot"
   * [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
* [#66](https://github.com/hl7ch/ch-emed/issues/66): Removed element Organization.telecom with the value 'nullFlavor' (extension), if no value is set, the element will not be represented.
   * [Organization Hausarzt](Organization-Hausarzt.html)
* [#71](https://github.com/hl7ch/ch-emed/issues/71): Typo in constraint "ch-emed-sect-padv"
   * [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [#69](https://github.com/hl7ch/ch-emed/issues/63): Wrong data in example 2-6 Medication Prescription document (base64 pdf, MedicationRequest.dispenseRequest)
   * [2-6 Medication Prescription document](Bundle-2-6-MedicationPrescription.html) 

#### Issues resolved without amendment
* [#70](https://github.com/hl7ch/ch-emed/issues/70) Remove language requirements of titles
* [#68](https://github.com/hl7ch/ch-emed/issues/68) MedicationDispense: languageCode fr-CH not accepted
* [#65](https://github.com/hl7ch/ch-emed/issues/65) CH EMED Extension Substitution - ValueSets not equal to CDA
