
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 4 Ballot - v3.1.0 (2023)

#### Added
* [#176](https://github.com/hl7ch/ch-emed/issues/176): Adding extensions to LIST entries for referencing the parent document.
* [#177](https://github.com/hl7ch/ch-emed/issues/177): Adding an annotation section in the [Medication List Composition](StructureDefinition-ch-emed-composition-medicationlist.html), analogous to the other documents.

#### Changed / Updated
* [#175](https://github.com/hl7ch/ch-emed/issues/175): Update Observation (PADV) for 'CHANGE'
   * Introducing the [Extension MedicationRequest Changed](StructureDefinition-ch-emed-ext-medicationrequest-changed.html) to the [Observation (PADV)](StructureDefinition-ch-emed-observation.html) to represent the changes in the context of a prescription.
   * Removal of the textually described [use case of a PADV](pharmaceutical-advice-document.html#modifying-an-existing-medication) 'CHANGE' in the context of a dispense.
* [#194](https://github.com/hl7ch/ch-emed/issues/179): Remove display values from patternCodeableConcepts, remove minimum cardinality = 1 for display values, using official display values in examples (valid with http://tx.fhir.org/r4).
* [#179](https://github.com/hl7ch/ch-emed/issues/179): Change the author element for MedicationRequest from 'performer' to 'requester'.
* [#156](https://github.com/hl7ch/ch-emed/issues/156): Set minimum cardinality of MedicationDispense.substitution.type back to 0 and define a [ValueSet](ValueSet-ActSubstanceAdminSubstitutionCode.html) excluding 'none' to prevent contradictions. 
* [#195](https://github.com/hl7ch/ch-emed/issues/195): Add additional slice in Composition.author to reference a device (MTP/PRE/DIS/PADV).
* [#149](https://github.com/hl7ch/ch-emed/issues/149): Add ATC-slice for Medication.code
* [#200](https://github.com/hl7ch/ch-emed/issues/200): Relax minimum cardinality of timing in [CH EMED Dosage (MedicationRequest)](StructureDefinition-ch-emed-dosage-medicationrequest.html)

#### Fixed
* [#182](https://github.com/hl7ch/ch-emed/issues/182): Don't allow nested sections.
* [#196](https://github.com/hl7ch/ch-emed/issues/196): No restriction of maximum cardinality of contained resources and adding aggregation type `contained` to element 'medicationReference'.
* [#191](https://github.com/hl7ch/ch-emed/issues/191): Typos
* [#209](https://github.com/hl7ch/ch-emed/issues/209): Allow Patient and RelatedPerson as reference of MedicationStatement.informationSource (CARD)


### STU 3 - v3.0.0 (2022-12-21)
#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#140](https://github.com/hl7ch/ch-emed/issues/140): Adding a new code (SCT) for Medication Card document (Composition.type)

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).

#### Added / Updated
* Different authors:
   * [#113](https://github.com/hl7ch/ch-emed/issues/113): Mapping of the author of the medical decision and the author of the document for the Medication List document. 
      * Add separate profiles ([MedicationStatement](StructureDefinition-ch-emed-medicationstatement-list.html)/[MedicationDispense](StructureDefinition-ch-emed-medicationdispense-list.html)/[MedicationRequest](StructureDefinition-ch-emed-medicationrequest-list.html)/[Observation](StructureDefinition-ch-emed-observation-list.html)) for use in the Medication List document ([#114](https://github.com/hl7ch/ch-emed/issues/114)). 
      * [#133](https://github.com/hl7ch/ch-emed/issues/133): Use case for prescription authors clarified by the separate list profiles and guidance (without additional adaptation needed)
   * Add description/use cases for the use of the different authors at the different document levels (document/section/entry) under [Guidance - Different Authors](different-authors.html) and update the profiles/examples according to the guidance ([#113](https://github.com/hl7ch/ch-emed/issues/113)):
      * [MTP](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)/[PRE](StructureDefinition-ch-emed-composition-medicationprescription.html)/[DIS](StructureDefinition-ch-emed-composition-medicationdispense.html)/[PADV](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson) (~~CH EMED Practitioner &#124; CH Core Organization EPR &#124; Device~~)
         * Composition.section.author: dito
      * [CARD](StructureDefinition-ch-emed-composition-medicationcard.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; Device &#124; CH Core Patient EPR &#124; RelatedPerson) (~~CH EMED Practitioner &#124; CH Core Organization EPR~~)
         * Composition.section.author: remove this element from differential
         * Entries - Author document: use CH Core Extension (remove ch-emed-ext-documentauthor) ([#146](https://github.com/hl7ch/ch-emed/issues/146), [#114](https://github.com/hl7ch/ch-emed/issues/114))
         * Entries - Author medical decision: only allow PractitionerRole (remove ch-emed-ext-representedorganization) ([#114](https://github.com/hl7ch/ch-emed/issues/114))
      * [LIST](StructureDefinition-ch-emed-composition-medicationlist.html):
         * Composition.author: Reference(Device) (~~CH EMED Practitioner &#124; CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson &#124; CH Core Organization EPR~~) 
         * Composition.section.author: remove this element from differential
         * Entries: add seperate list profiles as mentioned above
   * [#132](https://github.com/hl7ch/ch-emed/issues/132), [#125](https://github.com/hl7ch/ch-emed/issues/125): Practitioner and his/her organization (Composition.author) are mapped via PractitionerRole (updated profiles: all Compositions, [PractitionerRole](StructureDefinition-ch-emed-practitionerrole.html), [Practitioner](StructureDefinition-ch-emed-practitioner.html), [Organization](StructureDefinition-ch-emed-organization.html))   
   * [#151](https://github.com/hl7ch/ch-emed/issues/151): Include various inputs on the topic
* [#161](https://github.com/hl7ch/ch-emed/issues/161): [Home](index.html): Include the new IG fragments (IP Statements/Cross Version Analysis/Dependency Table/Globals Table) and remove Copyright (new included in IP Statements)
* [#126](https://github.com/hl7ch/ch-emed/issues/126): Set IG parameter 'allow-extensible-warnings = true' to show the warning when codes are not in extensible bindings
* [#141](https://github.com/hl7ch/ch-emed/issues/141): Add CH EMED examples in the profiles for 'identifier.value' (Bundle, Composition, MedicationDispense, MedicationRequest, MedicationStatement, Observation)
* [#91](https://github.com/hl7ch/ch-emed/issues/91): Allow [Extension Substitution](StructureDefinition-ch-emed-ext-substitution.html) also in Medication Card document (incl. updating the description of the extension to clarify the usage)

#### Changed / Updated
* Update dependency to the current version of CH Core -> STU3 (v3.0.0)
* [#123](https://github.com/hl7ch/ch-emed/issues/123): Update of the [introduction](index.html#introduction) according to the current status 
* [#120](https://github.com/hl7ch/ch-emed/issues/120): Change mapping for patient instruction from '*Entry*.note' to 'Dosage.patientInstruction' to be able to map the annotation comment in the Medication Card document to '[MedicationStatemtent.note](StructureDefinition-ch-emed-medicationstatement-card.html)' 
   * [#116](https://github.com/hl7ch/ch-emed/issues/116): Update the description of '[Observation.note](StructureDefinition-ch-emed-observation.html)'.
* Simplification/enhancement of dosing
   * [#120](https://github.com/hl7ch/ch-emed/issues/120): Add element 'patientInstruction' -> because the mapping from element '.note' has changed to 'Dosage.patientInstruction'
   * [#117](https://github.com/hl7ch/ch-emed/issues/117), [#72](https://github.com/hl7ch/ch-emed/issues/72): Add mapping for reserve medication as 'Dosage.asNeededBoolean'
   * [#130](https://github.com/hl7ch/ch-emed/issues/130), [#127](https://github.com/hl7ch/ch-emed/issues/127): Allow more different cases of dosages
* [#150](https://github.com/hl7ch/ch-emed/issues/150): Due to the decision that the CDA format will no longer be supported, CDA specific elements have been removed/adapted:
   * Remove extensions from differential (since they are defined in the underlying CH Core EPR profiles, they can theoretically still be used): 
      * time-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time) in author elements (profiles/examples)
      * sectionId-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-sectionid) in Composition.section (profiles/examples) ([#155](https://github.com/hl7ch/ch-emed/issues/155))
      * dataEnterer-extension in Composition (profiles)
      * versionNumber-extension in Composition (profiles)
      * informationRecipient in Composition (profiles) (note: is still a required element from CH Core EPR)
   * Remove mapping between CDA and FHIR in profiles ([#157](https://github.com/hl7ch/ch-emed/issues/157)) 
   * Remove the links to the CDA-CH-EMED documents (in the document tabs)
* [#118](https://github.com/hl7ch/ch-emed/issues/118): Adaptation of the use case title (de/fr) for PADV document to avoid confusion 
* [#131](https://github.com/hl7ch/ch-emed/issues/131): Optimization of the descriptions of the extensions which represent the references to other documents
* [#129](https://github.com/hl7ch/ch-emed/issues/129): Remove additional FHIR validation rules on 'Composition.title' and 'Composition.section.title'
* [#24 CDA](https://github.com/hl7ch/hl7ch-cda/issues/24): Update description of CARD and LIST 
* [#139](https://github.com/hl7ch/ch-emed/issues/139): Update description of CARD

#### Fixed
* [#128](https://github.com/hl7ch/ch-emed/issues/128): Remove requirement 'fixedValue' for 'MedicationStatement.status' and 'MedicationRequest.status', fixed wrong codes (~~completed~~) in examples
* [#144](https://github.com/hl7ch/ch-emed/issues/144): Typo
* [#135](https://github.com/hl7ch/ch-emed/issues/135): Broken link
* [#160](https://github.com/hl7ch/ch-emed/issues/160): Add missing elements 'experimental=false' and 'description' to CodeSystems

#### Issues resolved without amendment
* [#119](https://github.com/hl7ch/ch-emed/issues/119): Update the mapping to CDA for the Observation is no longer necessary
* [#134](https://github.com/hl7ch/ch-emed/issues/134): Issue was withdrawn
* [#124](https://github.com/hl7ch/ch-emed/issues/124): Due to the simplification of dosing, this request for stricter validation is no longer necessary
* [#142](https://github.com/hl7ch/ch-emed/issues/142): Representation GTIN remains in Medication.code (not identifier)
* [#143](https://github.com/hl7ch/ch-emed/issues/143): Currently no representation of the product code
* [#136](https://github.com/hl7ch/ch-emed/issues/136): No update for MTP necessary
* [#137](https://github.com/hl7ch/ch-emed/issues/137): No update for PRE necessary
* [#138](https://github.com/hl7ch/ch-emed/issues/138): Solved with other issue


### STU 3 Ballot - v2.1.0 (2022-07-07)

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
* [#97](https://github.com/hl7ch/ch-emed/issues/97), [#92](https://github.com/hl7ch/ch-emed/issues/92): Typos
* [#164](https://github.com/hl7ch/ch-emed/issues/164): Fix id of the element 'medicationReference' in the differential (profile)



### STU 2 - v2.0.0 (2022-02-11)
#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#72](https://github.com/hl7ch/ch-emed/issues/72) Representation of status "in reserve" (InRes) for a medication is missing.

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).
 
#### Added
* [#73](https://github.com/hl7ch/ch-emed/issues/73): Add warning if non-recommended timing-event codes are used in the structured dosage.
   * [CH EMED Dosage Structured Profile](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured.html) 
* [#76](https://github.com/hl7ch/ch-emed/issues/76): Elaboration of the repeated dispense.
   * [Additional tab with detailed description](repeated-dispense.html) 
   * Add element `MedicationRequest.dispenseRequest.validityPeriod` to be able to represent possible use cases ([profile](StructureDefinition-ch-emed-medicationrequest.html), [mapping to CDA](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-medicationrequest-mappings.html#mappings-for-cda-r2-http-hl7-org-v3-cda))

#### Changed / Updated
* [#64](https://github.com/hl7ch/ch-emed/issues/64): Dosage.timing.repeat.bounds[x] restricted to Period (start/end) instead of Duration, Range, Period to be equivalent to CDA.
   * [CH EMED Dosage Structured Profile](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured.html)
   * [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
   * [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
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
