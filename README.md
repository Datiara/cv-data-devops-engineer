# CV Data / DevOps Engineer

> Données personnelles dans `donnees_perso.md` (non tracké Git)
> Suivi des actions dans les [Issues GitLab](https://gitlab.com/datiara/public/cv-data-devops-engineer/-/issues)

---

## Structure du projet

```
├── index.html          CV public (sans données perso) — hébergé via GitLab/GitHub Pages
├── style.css           Feuille de style partagée (responsive web + PDF A4)
├── images/             Photo, drapeaux, icônes
├── CV_public.md        CV public en Markdown (lisible sur GitLab/GitHub)
├── .gitlab-ci.yml      Déploiement GitLab Pages
│
├── CV.html             CV privé avec données perso (non tracké)
├── CV.md               CV privé en Markdown (non tracké)
├── CV_Nathalie_AVRIL.pdf  PDF généré via weasyprint (non tracké)
└── donnees_perso.md    Données personnelles (non tracké)
```

### Consultation en ligne

- **GitLab Pages** : https://datiara.gitlab.io/public/cv-data-devops-engineer
- **GitHub Pages** : https://datiara.github.io/cv-data-devops-engineer

### Génération du PDF

```bash
weasyprint CV.html CV_Nathalie_AVRIL.pdf
```

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

### Creative Eurecom (2007-2024)
- Embarqué C classe A/B (ISO 13485), applications C++/C#, intranet eGroupware (15 ans), ERP Sylob

---

## Architecture GitLab / GitHub

**GitLab = source de vérité, GitHub = vitrine (miroir automatique)**

```
GitLab (source, CI/CD, gestion de projet)
├── datiara/public/cv-data-devops-engineer  ──miroir auto──▶  GitHub Datiara/cv-data-devops-engineer
└── (autres projets futurs)
```

---

## Différenciation

Profil rare : Data Engineer avec 20 ans d'embarqué industriel. Cibles :
- **Industrie 4.0 / IoT** — ThingsBoard déjà déployé
- **Entreprises manufacturières** en transformation digitale
- **Éditeurs MES / ERP / SCADA** — intégration Sylob/Aveva déjà faite
- **DataOps / Platform Engineering** — Kubernetes, ArgoCD, GitOps en production
