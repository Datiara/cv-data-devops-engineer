# Plan d'action - Recherche d'emploi Data / DevOps Engineer

> Données personnelles dans `donnees_perso.md` (non tracké Git)
> Suivi des actions dans les [Issues GitLab](https://gitlab.com/datiara/public/cv-data-devops-engineer/-/issues)

---

## Situation actuelle

- **Profil** : 20 ans XP embarqué/industriel, en reconversion Data/DevOps Engineering
- **Formation** : Alternance Neolithe (sept 2024 → 04 sept 2026), formation Liora (ex-DataScientest)
- **Certification visée** : RNCP 38919 "Data engineer" Niveau 7 (DataScientest)
- **Poste visé** : Data / DevOps Engineer, avec différenciation industrie/IoT

---

## Inventaire des projets valorisables

### Neolithe - Intégration ERP/MES (mes_erp_flow_v2)
**Rôle** : Data Engineer (alternance)
- 4 pipelines ETL bidirectionnels (Prefect 3) : ERP Sylob ↔ MES Aveva Calcite
- Connecteurs API REST (OAuth2) + ODBC (SQL Server), retry/backoff exponentiel
- Sync incrémentale avec delta tracking, validation Pydantic
- CI/CD GitLab, Docker, déploiement multi-env (dev/staging/prod)
- 220+ tests pytest, logging structuré, alerting Teams
- **Stack** : Python, Pandas, Prefect 3, SQL Server, Docker, GitLab CI/CD, Pydantic

### Neolithe - Litho (application de gestion de laboratoire)
**Rôle** : Développeur Full-Stack / Data Engineer
- Application sur Frappe v15 (Python 3.11, MariaDB, Redis)
- 36 DocTypes, architecture EAV pour formulaires dynamiques
- Intégration ERP Sylob (ODBC/pyodbc), parsers instruments labo (Mastersizer...)
- API BI pour Superset/Power BI, SQL views génériques
- 210+ tests, CI/CD GitLab (Ruff, pytest, Docker)
- **Stack** : Python, Frappe, MariaDB, Redis, Docker, GitLab CI/CD

### Neolithe - Infrastructure Kubernetes
**Rôle** : DevOps / Platform Engineer
- Cluster Kubernetes on-premise, déploiement GitOps (ArgoCD)
- 16 applications gérées : Litho, Airbyte, Superset, ThingsBoard, Grafana/Loki, MinIO
- Helm, Kustomize, opérateurs (CNPG PostgreSQL, MariaDB, MinIO)
- Stockage distribué (Longhorn), backup (Kopia)
- **Stack** : Kubernetes, ArgoCD, Helm, Kustomize, Grafana, Loki, PostgreSQL

### Liora - Crypto-bot (projet formation)
**Rôle** : Architecte / Développeur Full-Stack
- Plateforme de trading crypto : FastAPI + Streamlit + PostgreSQL + MongoDB
- Cluster Kubernetes (Talos Linux, 3 noeuds) sur Proxmox
- GitOps (ArgoCD), Sealed Secrets, Cloudflare Tunnel
- Architecture hybride on-premise + AWS (97.5% d'économie vs full cloud)
- Monitoring centralisé (Grafana + Loki + Promtail)
- CI/CD GitLab, multi-env (dev/staging/prod)
- **Stack** : Python, FastAPI, Streamlit, PostgreSQL, MongoDB, Kubernetes, ArgoCD, Kustomize

### Creative Eurecom - Embarqué (2007-2024)
**Rôle** : Concepteur développeur logiciel embarqué/débarqué
- Logiciels embarqués classe A/B (C), conformes ISO 13485 (médical)
- Applications débarquées (C++, C#), bancs de test, analyse de données Python
- Intranet eGroupware (PHP/MySQL) utilisé 15 ans, prise en main ERP Sylob
- **Valorisation DE** : temps réel → pipelines faible latence, bancs de test → data validation, IoT → edge computing

### Sojadis - Embarqué (2005-2007)
- Logiciels embarqués C sous OS temps réel, bancs de test LabView
- Site internet PHP/MySQL

---

## Architecture GitLab / GitHub

**Stratégie : GitLab = source de vérité, GitHub = vitrine (miroir automatique)**
> Voir le diagramme : [architecture-gitlab-github.excalidraw](architecture-gitlab-github.excalidraw)

```
GitLab (source, travail quotidien, CI/CD, gestion de projet)
├── datiara/public/cv-data-devops-engineer  ──miroir auto──▶  GitHub Datiara/cv-data-devops-engineer
├── datiara/public/crypto-bot (futur)       ──miroir auto──▶  GitHub Datiara/crypto-bot
└── (autres projets futurs)

GitHub (vitrine, visibilité recruteurs)
├── Datiara/cv-data-devops-engineer         ← miroir auto depuis GitLab
└── (futurs miroirs)
```

---

## Différenciation clé

Profil rare : Data Engineer avec 20 ans d'embarqué industriel. Cibles :
- **Industrie 4.0 / IoT** — ThingsBoard déjà déployé
- **Entreprises manufacturières** en transformation digitale
- **Éditeurs MES / ERP / SCADA** — intégration Sylob/Aveva déjà faite
- **Edge computing** et traitement de données industrielles
- **DataOps / Platform Engineering** — Kubernetes, ArgoCD, GitOps déjà en production

Atout supplémentaire : le projet Crypto-bot montre une capacité à architecturer une infra complète from scratch (Proxmox → K8s → ArgoCD → monitoring), avec une approche coût maîtrisé.
