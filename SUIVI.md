# Plan d'action - Recherche d'emploi Data Engineer

> Données personnelles dans `donnees_perso.md` (non tracké Git)

---

## Situation actuelle

- **Profil** : 20 ans XP embarqué/industriel, en reconversion Data Engineering
- **Formation** : Alternance Neolithe (sept 2024 → 04 sept 2026), formation Liora (ex-DataScientest)
- **Certification visée** : RNCP 38919 (France Compétences)
- **Poste visé** : Data Engineer, avec différenciation industrie/IoT

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

### Neolithe - LIMS Litho (Frappe)
**Rôle** : Développeur Full-Stack / Data Engineer
- Application LIMS sur Frappe v15 (Python 3.11, MariaDB, Redis)
- 36 DocTypes, architecture EAV pour formulaires dynamiques
- Intégration ERP Sylob (ODBC/pyodbc), parsers instruments labo (Mastersizer...)
- Migration ETL depuis legacy LIMS (SQL Server → Frappe)
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
- Développement intranet (PHP/MySQL/Symfony)
- **Valorisation DE** : temps réel → pipelines faible latence, bancs de test → data validation, IoT → edge computing

### Sojadis - Embarqué (2005-2007)
- Logiciels embarqués C sous OS temps réel, bancs de test LabView
- Site internet PHP/MySQL

---

## Phase 1 - Formaliser les compétences (EN COURS)

### 1.1 Refonte du CV
- [x] Restructurer le CV : positionnement Data/DevOps Engineer
- [x] Rédiger les bullet points pour chaque expérience (voir inventaire ci-dessus)
- [x] Mettre à jour la section compétences techniques
- [x] Actualiser le résumé/accroche
- [x] Générer le CV en Markdown → `CV.md`
- [ ] Convertir en PDF (mise en forme)

### 1.2 Informations à compléter
- [x] Dates alternance Neolithe : sept 2024 → 04 sept 2026
- [x] Technos projet LIMS : Frappe v15, Python 3.11, MariaDB, Redis, pyodbc
- [x] Technos projet Crypto-bot : FastAPI, Streamlit, PostgreSQL, MongoDB, K8s
- [x] Intitulé certification : "Data engineer", Niveau 7, certificateur DataScientest (RNCP 38919)
- [ ] Vérifier si mention du projet Crypto-bot OK publiquement (projet Liora)

---

## Phase 2 - Portfolio GitHub (à venir)

### 2.1 Projet de démonstration public
- [ ] Mini pipeline ETL (Prefect ou Airflow)
- [ ] API → transformation → chargement en base (PostgreSQL ou BigQuery)
- [ ] Tests, CI/CD GitHub Actions, Docker
- [ ] README avec diagramme d'architecture

### 2.2 Compléter les briques RNCP 38919
- [ ] Cloud : petit projet AWS/GCP (S3, Lambda, BigQuery)
- [ ] Big Data : exercice Spark/PySpark
- [ ] Data Warehouse : modèle en étoile avec dbt
- [ ] Streaming : PoC Kafka ou Pub/Sub

---

## Phase 3 - Présence en ligne (à venir)

### 3.1 LinkedIn
- [ ] Nouveau titre : Data Engineer | Python | ETL/ELT | Kubernetes | SQL | XP systèmes industriels
- [ ] Mettre à jour les expériences
- [ ] Rédiger un post sur la reconversion

### 3.2 Architecture GitLab / GitHub

**Stratégie : GitLab = source de vérité, GitHub = vitrine (miroir automatique)**
> Voir le diagramme : [architecture-gitlab-github.excalidraw](architecture-gitlab-github.excalidraw)

```
GitLab (source, travail quotidien, CI/CD, gestion de projet)
├── datiara/public/cv-data-devops-engineer  ──miroir auto──▶  GitHub Datiara/cv-data-devops-engineer
├── datiara/public/crypto-bot (futur)       ──miroir auto──▶  GitHub Datiara/crypto-bot
└── (autres projets futurs)

GitHub (vitrine, visibilité recruteurs)
├── Datiara/Datiara                         ← Profile README (page d'accueil)
├── Datiara/cv-data-devops-engineer         ← miroir auto depuis GitLab
└── (futurs miroirs)
```

**Étapes :**
- [x] Créer le repo GitLab `datiara/public/cv-data-devops-engineer`
- [ ] Commiter et pousser le CV sur GitLab
- [ ] Créer le repo GitHub `Datiara/cv-data-devops-engineer`
- [ ] Configurer le miroir automatique GitLab → GitHub (Settings > Repository > Mirroring)
- [ ] Créer le repo GitHub `Datiara/Datiara` (profile README)
- [ ] Rédiger le profile README GitHub (présentation, compétences, liens vers GitLab)

---

## Phase 4 - Préparation entretiens (à venir)

### 4.1 Sujets techniques à maîtriser
- [ ] SQL avancé (window functions, CTEs, optimisation)
- [ ] Modélisation dimensionnelle (Kimball)
- [ ] Orchestration (Prefect / Airflow)
- [ ] Cloud basics (au moins un provider)
- [ ] Python data stack (Pandas, PySpark, dbt)

### 4.2 Technos du CV à approfondir (mentionnées mais pas maîtrisées)
> Objectif : savoir expliquer ce que c'est, pourquoi c'est utilisé dans le projet, et répondre à 2-3 questions techniques dessus.

**Présentes dans les projets mais pas bien maîtrisées :**
- [ ] **Pydantic** — validation de données Python, utilisé dans mes_erp_flow_v2 pour valider les données entre ERP/MES
- [ ] **Delta tracking** — pattern de sync incrémentale (quelles données ont changé depuis la dernière sync)
- [ ] **Kustomize** — personnalisation de manifestes K8s sans templating (vs Helm), utilisé dans Crypto-bot
- [ ] **Loki** — agrégation de logs (le "Prometheus des logs"), déployé sur l'infra K8s Neolithe et Crypto-bot
- [ ] **Promtail** — agent de collecte de logs qui alimente Loki (installé sur chaque noeud K8s)
- [ ] **ThingsBoard** — plateforme IoT déployée sur l'infra K8s Neolithe (collecte données capteurs industriels)
- [ ] **Sealed Secrets** — contrôleur Bitnami qui chiffre les Secrets K8s pour les stocker dans Git (brique clé du GitOps)

### 4.3 Technos certifiées (Liora) mais pas pratiquées en projet
> Objectif : consolider par de la pratique perso ou savoir en parler honnêtement en entretien ("certifié, pas encore mis en production").

**Big Data & Data Warehouse :**
- [ ] **PySpark** — traitement distribué, API DataFrame similaire à Pandas
- [ ] **Hadoop / Hive** — écosystème stockage distribué + requêtes SQL sur HDFS
- [ ] **Snowflake** — data warehouse cloud, séparation compute/storage
- [ ] **dbt** — transformation de données dans le warehouse (SQL + Jinja), modélisation dimensionnelle

**Machine Learning & MLOps :**
- [ ] **scikit-learn** — régression, clustering, preprocessing
- [ ] **Keras** — réseaux de neurones (DNN, CNN)
- [ ] **MLFlow** — tracking d'expériences, registry de modèles, déploiement
- [ ] **Drift Monitoring** — détection de dérive des données/modèles en production

**Autres :**
- [ ] **Elasticsearch** — moteur de recherche et d'analyse distribué
- [ ] **Bokeh** — visualisation interactive Python (alternative à Matplotlib)

### 4.4 Pitch
- [ ] Storytelling de reconversion (3 min)
- [ ] Fiche par projet avec métriques et décisions techniques
- [ ] Questions types entretien DE + réponses préparées

---

## Différenciation clé

Profil rare : Data Engineer avec 20 ans d'embarqué industriel. Cibles :
- **Industrie 4.0 / IoT** — ThingsBoard déjà maîtrisé
- **Entreprises manufacturières** en transformation digitale
- **Éditeurs MES / ERP / SCADA** — intégration Sylob/Aveva déjà faite
- **Edge computing** et traitement de données industrielles
- **DataOps / Platform Engineering** — Kubernetes, ArgoCD, GitOps déjà en production

Atout supplémentaire : le projet Crypto-bot montre une capacité à architecturer une infra complète from scratch (Proxmox → K8s → ArgoCD → monitoring), avec une approche coût maîtrisé.

---

## Journal de suivi

| Date       | Action                                           | Statut |
|------------|--------------------------------------------------|--------|
| 2026-03-10 | Création du plan d'action SUIVI.md               | Fait   |
| 2026-03-10 | Analyse du CV existant (mai 2024)                | Fait   |
| 2026-03-10 | Sécurisation données perso (fichier local)       | Fait   |
| 2026-03-10 | Exploration projets Litho, infra K8s, Crypto-bot | Fait   |
| 2026-03-10 | Inventaire consolidé des projets valorisables    | Fait   |
| 2026-03-10 | Rédaction CV.md (Data/DevOps Engineer)            | Fait   |
| 2026-03-10 | Intégration fiche RNCP 38919 confirmée             | Fait   |
| 2026-03-10 | Création CV_public.md (sans données perso)         | Fait   |
| 2026-03-10 | Ajout Claude Code, AWS SA, centres d'intérêt       | Fait   |
| 2026-03-10 | Init repo Git + push GitLab                        | Fait   |
