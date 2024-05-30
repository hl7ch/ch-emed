Les cas d’application représentés ici (UC = Use Case) se rapportent à des exemples tels qu’ils se présentent aujourd’hui aux différents acteurs du système de santé suisse concernés par la thématique présente. Certains de ces cas d’application ne sont possibles que si toutes les informations pertinentes sont interopérables et peuvent circuler grâce à des mécanismes d’importation et d’exportation.

L’objectif est, dune part la mise à disposition des informations sur l’état de santé d’un patient pour les personnes impliquées dans la voie de traitement sous une forme lisible par l’homme. D’autre part, des processus doivent être optimisés dans les systèmes informatiques par le traitement électronique de ces informations. Il en découle les cas d’application décrits ci-après. 

### Exemple de cas IPAG
Dans son rapport, le groupe de travail IPAG a élaboré un cas d’application (Use Case) afin d’illustrer les processus interprofessionnels et la communication dans la cybermédication. L’exemple de cas énumère des situations auxquelles les différents professionnels de la santé impliqués dans le traitement médicamenteux d’un patient peuvent être confrontés au quotidien. Cet exemple de cas décrit les deux premières étapes du cas d’application du [Rapport IPAG Cybermédication](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/F/170607_Bericht_eMedikation_IPAG_f.pdf) au chapitre 6, appendice II : Cas de Madame Wegmüller. 

*Le texte suivant comporte des tableaux qui reprennent et appliquent les recommandations du groupe de travail IPAG. Ces tableaux représentent, à titre d’exemple, les possibilités d’application des documents électroniques. Les listes de médication représentées n’ont pas encore été validées en termes de contenu et sur le plan clinique.*

#### Première consultation chez le médecin de premier recours

**Consultation chez le médecin le 29 novembre 2011**

Madame Wegmüller Monika (nom modifié), née le 15 mai 1943 (date modifiée), se rend chez son médecin car elle ne se sent pas bien. Celui-ci diagnostique une hypertension artérielle et lui prescrit un traitement à base de ramipril, à raison de 1,25 mg 1x par jour, à prendre le matin. Il lui remet un emballage de comprimés de Triatec 2,5 mg et lui recommande de prendre un demi-comprimé le matin. À la demande de Madame Wegmüller, le médecin crée un dossier électronique (DEP) pour la patiente et y documente sa décision thérapeutique ainsi que la remise du médicament.

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Rampiril | Cpr. | 2.5 mg / Cpr. | 1/2 comprimé le matin | 0.5 | 0 | 0 | 0 | oral | | | Hypertension |

*Décision thérapeutique relative à la médication*: [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Taille de l’emballage | Packungs- grösse | Posologie | Pos. Morgen| Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement | Date/heure de l’administration | Identification du patient |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------ | :------- | :------ |
| Triatec | Rampiril | Cpr. | 2.5 mg / Cpr. | 1 | 20 pces | 1/2 comprimé le matin | 0.5 | 0 | 0 | 0 | oral | | | Hypertension | | |

*Remise*: [1-2 Medication Dispense document](Bundle-1-2-MedicationDispense.html)

#### Contrôle par le médecin de premier recours

**Consultation chez le médecin le 4 février 2012**

Lors d’un contrôle de son hypertension, Madame Wegmüller se plaint d’une toux sèche. Elle pense avoir un refroidissement. Le médecin prend connaissance des médicaments que prend Madame Wegmüller en consultant la liste de médication.

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité |Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Ramipril | Cpr. | 2.5 mg / Cpr. | 1/2 comprimé le matin | 0.5 | 0  | 0  | 0  | oral | | | Hypertension |

*Liste de médication*: [2-1 Medication List document](Bundle-2-1-MedicationList.html)

Il suspecte un effet indésirable (EI) connu du ramipril et arrête le Triatec.

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Durée du traitement | Motif du traitement | Commentaire |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Ramipril | Cpr. | 2.5 mg / Cpr. | 1/2 comprimé le matin | 0.5 | 0 | 0 | 0 | oral | | Hypertension | Arrêté en raison effet secondaire toux sèche |

*Conseil pharmaceutique*: [2-2 Pharmaceutical Advice document (CANCEL)](Bundle-2-2-PharmaceuticalAdvice.html)

Étant donné que la tension artérielle de la patiente s’est également aggravée, le médecin prescrit un traitement combiné à base d’amlodipine, 2 x 10 mg par jour, et de métoprolol 50 mg, à raison de 1 comprimé le matin et d’un 1⁄2 comprimé le soir. Il remet du Beloc Zok (métoprolol) à la patiente et établit une ordonnance électronique pour du Norvasc.

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | Cpr. Ret. | 50 mg / Cpr. | 1 comprimé le matin et 1/2 comprimé le soir | 1 | 0 | 0.5 | 0 | oral | | | Hypertension |

*Décision thérapeutique relative à la médication*: [2-3 Medication Treatment Plan document](Bundle-2-3-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Taille de l’emballage | Taille de l’emballage | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement | Date/heure de l’administration | Identification du patient |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | Cpr. Ret. | 50 mg / Cpr. | 1 | 30 pces | 1 comprimé le matin et 1/2 comprimé le soir | 1  | 0  | 0.5 | 0  | oral | | | Hypertension | | |

*Remise*: [2-4 Medication Dispense document](Bundle-2-4-MedicationDispense.html)


{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Norvasc | Amlodipin | Cpr. | 10 mg / Cpr. | 1 comprimé le matin et le soir | 1 | 0 | 1 | 0 | oral | | | Hypertension |

*Décision thérapeutique relative à la médication*: [2-5 Medication Treatment Plan document](Bundle-2-5-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Retrait répété du médicament | GTIN | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Substituabilité |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------ |
| Norvasc | Amlodipin | Cpr. | 10 mg / Cpr. | Ordonnance pour 3 mois | | 1 comprimé le matin et le soir | 1 | 0 | 1 | 0 | oral | | | |

*Ordonnance*: [2-6 Medication Prescription document](Bundle-2-6-MedicationPrescription.html)

####  Plan de médication
En plus du cas d’application IPAG, le médecin de premier recours élabore un plan électronique de médication pour la patiente et dépose le document dans le dossier électronique du patient.

{:class="table table-bordered"}
| Nom de la préparation | Nom du principe actif | Forme galénique | Dose par unité | Posologie | Pos. Matin | Pos. Midi | Pos. Soir | Pos. Nuit | Mode d’administration | Commentaire | Durée du traitement | Motif du traitement |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | Cpr. Ret. | 50 mg / Cpr. | 1 comprimé le matin et 1/2 comprimé le soir | 1 | 0 | 0.5 | 0 | oral | | | Hypertension |        
| Norvasc | Amlodipin | Cpr. | 10 mg / Cpr. | 1 comprimé le matin et le soir | 1 | 0 | 1 | 0 | oral | | | Hypertension |

*Plan de médication*: [2-7 Medication Card document](Bundle-2-7-MedicationCard.html)

### Autre exemple de cas

#### Accident avec médication par les services de secours

**Accident du 3 février 2020**

Monsieur Max Moser (nom modifié), né le 27.11.1988 (date modifiée), titulaire d'un DEP, se promène le 3 février 2020 (journée d'hiver glaciale avec du verglas) à Berne. Il glisse dans un escalier et se blesse si gravement qu'il ne peut plus continuer à marcher lui-même. Monsieur Moser souffre beaucoup.     
Les services de secours appelés sur place soupçonnent une fracture de la jambe qui doit être traitée à l'hôpital. Afin de rendre Monsieur Moser transportable, l'ambulancière Priska Huber (nom modifié) lui pose une perfusion de NaCL 0,9% à 14h32 et lui administre 0,05 mg de Fentanyl i.v. pour traiter la douleur.     
La médication est enregistrée par l'équipe du service de secours dans le protocole d'intervention électronique. Monsieur Moser est alors transporté à l'hôpital. Lors du transfert du patient, l'équipe du service des urgences est informée non seulement du diagnostic de suspicion, mais aussi de la médication administrée. L'application de la médication est classée par le service de secours dans le dossier électronique du patient de Monsieur Moser.      

*Application* : [3-1 Medication Dispense document (NaCL)](Bundle-3-1-MedicationDispense.html) & [3-2 Medication Dispense document (Fentanyl)](Bundle-3-2-MedicationDispense.html)
