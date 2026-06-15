# CV Data / DevOps Engineer

> Données personnelles dans `donnees_perso.md` (non tracké Git)
> Suivi des actions dans les [Issues GitLab](https://gitlab.com/datiara/public/cv-data-devops-engineer/-/issues)

---

## Structure du projet

> **Source de vérité = les fichiers `.html`.** Chaque CV est maintenu en HTML
> (+ `style.css`), et `build.sh` régénère les PDF via weasyprint. Il n'y a plus
> de version Markdown des CV.

```
├── build.sh                Régénère tous les PDF depuis les .html (weasyprint)
│
│  Sources HTML (un .html par CV) :
├── index.html              CV public FR (version complète) — hébergé via GitLab/GitHub Pages
├── en.html                 CV public EN (version complète) — hébergé via GitLab/GitHub Pages
├── CV_public.html          CV public FR (compacté 1 page) — source du PDF public
├── CV_ats.html             CV version ATS (1 colonne stylée, parsing optimisé, contact anonymisé)
├── CV_data_aws.html        CV ciblé Data & Cloud AWS        (local, non tracké — coordonnées réelles)
├── CV_data_integration.html CV ciblé intégration / ETL      (local, non tracké — coordonnées réelles)
├── CV_devops_sre.html      CV ciblé DevOps / SRE            (local, non tracké — coordonnées réelles)
├── CV.html                 CV privé généraliste             (local, non tracké — coordonnées réelles)
│
│  Styles & ressources :
├── style.css               Feuille de style PDF (compact, A4 1 page)
├── style-web.css           Feuille de style web (responsive mobile/desktop, + sélecteur FR/EN)
├── images/                 Photo, drapeaux, icônes
├── Certificats/            Certificats Liora (PDF)
│
│  Sorties & config :
├── CV_Nathalie_AVRIL_public.pdf  PDF public 1 page (généré depuis CV_public.html)
├── .gitlab-ci.yml          Déploiement GitLab Pages
└── donnees_perso.md        Données personnelles (non tracké)
```

### Quel CV pour quelle offre ?

Trois variantes ciblées (un profil par type d'offre) et un socle généraliste décliné selon
l'usage (privé / public / web / ATS). Toutes partagent le même fond (Neolithe, Liora,
Creative Eurecom…) ; seuls l'intitulé, l'accroche et la hiérarchie des compétences changent.

| Fichier | Intitulé | Profil ciblé | Type d'offres | Lisibilité ATS¹ |
|---|---|---|---|---|
| `CV_data_integration.html` | Data Engineer — Intégration & ETL | **Data Engineer** (pur) | « Data Engineer », ETL, pipelines, intégration de données — le plus proche du référentiel APEC Data Engineer | 🟡 mots-clés OK (2 colonnes) |
| `CV_data_aws.html` | Data & Cloud Engineer — AWS | Data Engineer à coloration **cloud** | Cloud / Data Engineer, AWS, data platform cloud | 🟡 mots-clés OK (2 colonnes) |
| `CV_devops_sre.html` | DevOps / SRE — Kubernetes & GitOps | **DevOps / SRE / Platform Engineer** | DevOps, SRE, Platform Engineering, Kubernetes / GitOps / observabilité | 🟡 mots-clés OK (2 colonnes) |
| `CV.html` | Data / DevOps Engineer | Généraliste **hybride** (data + devops) | postes mixtes (DataOps), candidature spontanée — **version privée** (email / téléphone) | 🟡 mots-clés OK (2 colonnes) |
| `CV_public.html` | Data / DevOps Engineer | Généraliste hybride | idem, **sans coordonnées** — source du PDF public 1 page | 🟡 mots-clés OK (2 colonnes) |
| `index.html` | Data / DevOps Engineer | Généraliste (web, FR) | partage d'un lien, vitrine en ligne | ➖ non concerné (web) |
| `en.html` | Data / DevOps Engineer | Généraliste (web, EN) | recruteurs anglophones | ➖ non concerné (web) |
| `CV_ats.html` | Data / DevOps Engineer (ATS) | Généraliste, **lisible par robot** | portails d'emploi / ATS qui parsent automatiquement le PDF (mono-colonne, sans icône ni tableau) | ✅ optimale |

¹ Vérifié par extraction texte (`pdftotext`, ce que lit un ATS), juin 2026 :
- `CV_ats.html` → extraction **linéaire**, sans emoji ni colonne, **13/13** mots-clés APEC retrouvés. À privilégier pour tout dépôt sur un portail ATS.
- CV à 2 colonnes → **12–13/13** mots-clés bien extraits, mais l'ordre de lecture s'entrelace (colonne latérale ↔ principale) et les emojis peuvent gêner les ATS anciens. Sans risque pour les ATS modernes et la lecture humaine ; pour un ATS strict, doubler l'envoi avec `CV_ats.html`.

`CV.html` est le profil **généraliste hybride** (Data + DevOps), pas un CV Data Engineer dédié.
Aiguillage : offre Data Engineer → `CV_data_integration.html` (ou `CV_data_aws.html` si orientée
cloud) ; offre infra → `CV_devops_sre.html` ; dépôt sur un portail ATS → `CV_ats.html`.

### Consultation en ligne

- **GitLab Pages** : https://datiara.gitlab.io/public/cv-data-devops-engineer
- **GitHub Pages** : https://datiara.github.io/cv-data-devops-engineer

### Génération des PDF

```bash
# Tous les CV d'un coup (depuis les .html + style.css)
./build.sh

# Un seul CV
./build.sh CV_ats.html
```

> Sous le capot : `weasyprint`, sortie datée du jour comme les archives
> (`CV_Nathalie_AVRIL_<variante>_AAAA-MM-JJ.pdf`). Le PDF public est aussi
> exporté sous son nom canonique `CV_Nathalie_AVRIL_public.pdf` (référence tracké).

> **Note** : `index.html` / `en.html` sont les versions web complètes (plus aérées),
> utilisées uniquement pour l'affichage en ligne. Le PDF public est généré depuis
> `CV_public.html` (version compactée pour tenir sur 1 page A4).

---

## Profil

- **Reconversion** : Data/DevOps Engineer après 20 ans d'embarqué industriel
- **Alternance** : Neolithe (sept 2024 → sept 2026), formation Liora (ex-DataScientest)
- **Certification visée** : RNCP 38919 "Data engineer" Niveau 7
- **Poste visé** : Data / DevOps Engineer, avec différenciation industrie/IoT

---

## Projets valorisables

### Neolithe (alternance)
- **Pipelines ETL** : 4 pipelines bidirectionnels (Prefect 3), ERP ↔ MES, 220+ tests
- **Litho** : Application labo sur Frappe (36 DocTypes, architecture EAV), 210+ tests
- **Infrastructure K8s** : Cluster on-premise, GitOps (ArgoCD), 16 applications en production

### Liora (formation)
- **Crypto-bot** : Plateforme trading (FastAPI, K8s Talos, ArgoCD, Sealed Secrets), 97,5% d'économie vs cloud

### Portfolio personnel
- **Industrial Data Sync** : Pipeline ETL bidirectionnel ERP ↔ MES (Prefect 3, AWS serverless : S3, DynamoDB, Lambda), version anonymisée et simplifiée d'un projet industriel réel

### Creative Eurecom (2007-2024)
- Embarqué C classe A/B (ISO 13485), applications C++/C#, intranet eGroupware (15 ans), ERP Sylob

---

## Architecture GitLab / GitHub

**GitLab = source de vérité, GitHub = vitrine (miroir automatique)**

```
GitLab (source, CI/CD, gestion de projet)
├── datiara/public/cv-data-devops-engineer    ──miroir──▶  GitHub Datiara/cv-data-devops-engineer
└── datiara/public/industrial-data-sync       ──miroir──▶  GitHub Datiara/industrial-data-sync
```

---

## Différenciation

Profil rare : Data Engineer avec 20 ans d'embarqué industriel. Cibles :
- **Industrie 4.0 / IoT** — ThingsBoard déjà déployé
- **Entreprises manufacturières** en transformation digitale
- **Éditeurs MES / ERP / SCADA** — intégration Sylob/Aveva déjà faite
- **DataOps / Platform Engineering** — Kubernetes, ArgoCD, GitOps en production
