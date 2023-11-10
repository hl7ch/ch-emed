Die hier skizzierten Anwendungsfälle (UC = Use Case) beziehen sich auf Beispiele, wie sie heute bei den verschiedenen Akteuren im Schweizer Gesundheitswesen vorkommen, die mit dem vorliegenden Thema zu tun haben. Einige Anwendungsfälle werden erst möglich, wenn durch Import/Export-Mechanismen alle relevanten Informationen interoperabel fliessen können.

Ziel ist einerseits die Bereitstellung von Informationen zum Gesundheitszustand des Patienten in einer menschlich lesbaren Form für die am Behandlungspfad beteiligten Personen. Andererseits sollen durch die elektronische Verarbeitung der Informationen Prozesse in den ICT-Systemen optimiert werden können.  
Nachfolgend beschriebene Anwendungsfälle verdeutlichen diese Zusammenhänge im vorliegenden Kontext. 

### IPAG Fallbeispiel
Die IPAG hat in ihrem Bericht ein Use Case erarbeitet für die Illustration der interprofessionellen Prozesse und Kommunikation in der eMedikation. Im Fallbeispiel werden Situationen geschildert, mit welchen die verschiedenen, an der medikamentösen Behandlung eines Patienten beteiligten Gesundheitsfachpersonen im Alltag konfrontiert werden können. Dieses Fallbeispiel beschreibt die ersten 2 Schritte des Use Case des [IPAG Bericht eMedikation](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf) im Kapitel 6 Appendix II: Use Case Frau Wegmüller. 

*Im folgenden Text werden Tabellen dargestellt, welche die Empfehlungen der IPAG aufnehmen und anwenden. Diese Tabellen sollen exemplarisch die Anwendbarkeit der eDokumente darstellen. Die dargestellten Medikationslisten wurden inhaltlich und klinisch noch nicht validiert.*

#### Erstbesuch beim Hausarzt

**Arztbesuch vom 29. November 2011**

Frau Wegmüller Monika (Name geändert), geboren am 15. Mai 1943 (Datum geändert), kommt mit Beschwerden zu ihrem Hausarzt. Dieser diagnostiziert eine Hypertonie und verordnet eine medikamentöse Behandlung mit Ramipril 1.25mg 1x täglich morgens. Er gibt Frau Wegmüller hierfür eine Packung Triatec 2.5mg Tabletten mit der Dosierung „Morgens 1⁄2 Tablette einnehmen“ ab. Auf Wunsch von Frau Wegmüller eröffnet er in der Folge für seine Patientin ein elektronisches Patientendossier (EPD) und dokumentiert dort seinen Therapieentscheid und die Abgabe des Arzneimittels.

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Rampiril | | Tbl | 2.5 mg / Tbl | Morgens 1/2 Tablette nehmen | 0.5 | 0 | 0 | 0 | oral | | | Bluthochdruck |

*Therapieentscheid Medikation*: [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Anzahl Packungen | Packungs- grösse | Dosierung | Dos. Morgen| Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund | Datum/Zeit der Abgabe/Anwendung | Identifikation des Empfängers |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------ | :------- | :------ |
| Triatec | Rampiril | | Tbl | 2.5 mg / Tbl | 1 | 20 Stk. | Morgens 1/2 Tablette nehmen | 0.5 | 0 | 0 | 0 | oral | | | Bluthochdruck | | |

*Abgabe*: [1-2 Medication Dispense document](Bundle-1-2-MedicationDispense.html)

#### Kontrolle Hausarzt

**Arztbesuch vom 4. Februar 2012**

Anlässlich einer Nachkontrolle der Hypertonie klagt Frau Wegmüller über einen trockenen Husten. Sie vermutete eine Erkältung. Der Hausarzt verschafft sich einen Überblick über die aktuelle Medikation von Frau Wegmüller indem er die Medikationsliste abruft.

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit |Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Ramipril |  | Tbl | 2.5 mg / Tbl | Morgens 1/2 Tablette nehmen | 0.5 | 0  | 0  | 0  | oral | | | Bluthochdruck |

*Medikationsliste*: [2-1 Medication List document](Bundle-2-1-MedicationList.html)

Er vermutet eine bekannte unerwünschte Arzneimittelnebenwirkung (UAW) für Ramipril und setzt diese medikamentöse Therapie ab.

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Anwendungs- dauer | Behandlungs- grund | Kommentar |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Triatec | Ramipril | | Tbl | 2.5 mg / Tbl | Morgens 1/2 Tablette nehmen | 0.5 | 0 | 0 | 0 | oral | | Bluthochdruck | Abgesetzt aufgrund UAW trockener Husten |

*Pharmazeutischer Ratschlag*: [2-2 Pharmaceutical Advice document (CANCEL)](Bundle-2-2-PharmaceuticalAdvice.html)

Da sich gleichzeitig die Blutdruckwerte verschlechtert haben, verordnet der Arzt eine Kombinationstherapie mit Amlodipin 10mg 2x täglich und Metoprolol 50mg in der Dosierung 1-0-0.5-0. Er gibt der Patientin Beloc Zok (Metoprolol) mit und verschreibt ihr Norvasc mit einem elektronischen Rezept.

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | | Ret Tbl | 50 mg / Tbl | Morgens 1 und abends 1/2 Tablette einnehmen | 1 | 0 | 0.5 | 0 | oral | | | Bluthochdruck |

*Therapieentscheid Medikation*: [2-3 Medication Treatment Plan document](Bundle-2-3-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Anzahl Packungen | Packungs- grösse | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund | Datum/Zeit der Abgabe/Anwendung | Identifikation des Empfängers |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | | Ret Tbl | 50 mg / Tbl | 1 | 30 Stk | Morgens 1 und abends 1/2 Tablette nehmen | 1  | 0  | 0.5 | 0  | oral | | | Bluthochdruck | | |

*Abgabe*: [2-4 Medication Dispense document](Bundle-2-4-MedicationDispense.html)

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Norvasc | Amlodipin | | Tbl | 10 mg / Tbl | Morgens und abends je 1 Tablette einnehmen | 1 | 0 | 1 | 0 | oral | | | Bluthochdruck |

*Therapieentscheid Medikation*: [2-5 Medication Treatment Plan document](Bundle-2-5-MedicationTreatmentPlan.html)

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Wiederholter Bezug pro Arzneimittel | GTIN | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Substituier- barkeit |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ | :------- | :------ |
| Norvasc | Amlodipin | | Tbl | 10 mg / Tbl | Dauerrezept für 3 Monate | | Morgens und abends je 1 Tablette einnehmen | 1 | 0 | 1 | 0 | oral | | | |

*Rezept*: [2-6 Medication Prescription document](Bundle-2-6-MedicationPrescription.html)

#### Medikationsplan
Zusätzlich zum IPAG Anwendungsfall erstellt der Hausarzt einen Medikationsplan für die Patientin und stellt das Dokument in das Elektronische Patientendossier.

{:class="table table-bordered"}
| Präparate- name | Wirkstoff- name | Dosis pro Wirkstoff | Galenische Form | Dosis pro Einheit | Dosierung | Dos. Morgen | Dos. Mittag | Dos. Abend | Dos. Nacht | Verabreichungs- weg | Kommentar | Anwendungs- dauer | Behandlungs- grund |
| :------- | :------ | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------- | :------ |
| Beloc Zok | Metoprolol | | Ret Tbl | 50 mg / Tbl | Morgens 1 und abends 1/2 Tablette einnehmen | 1 | 0 | 0.5 | 0 | oral | | | Bluthochdruck |        
| Norvasc | Amlodipin | | Tbl | 10 mg / Tbl | Morgens und abends je 1 Tablette einnehmen | 1 | 0 | 1 | 0 | oral | | | Bluthochdruck |

*Medikationsplan*: [2-7 Medication Card document](Bundle-2-7-MedicationCard.html)

### Weiteres Fallbeispiel
TODO

*Anwendung*: [3-1 Medication Dispense document](Bundle-3-1-MedicationDispense.html)
