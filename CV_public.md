# Nathalie AVRIL

**Data / DevOps Engineer**

> Trélazé (49) | Permis B
> [LinkedIn](https://www.linkedin.com/in/nathalie-avril) | [GitLab](https://gitlab.com/datiara/public) | [GitHub](https://github.com/Datiara)

---

## 📝 Profil

Data / DevOps Engineer combinant **19 ans d'expertise en développement logiciel embarqué industriel** et une spécialisation en **data engineering & platform engineering**. Je conçois et mets en production des systèmes data fiables et scalables (ETL, Kubernetes, GitOps), avec un focus sur l'**automatisation, l'observabilité et la robustesse**. Profil hybride : rigueur industrielle, culture qualité et sécurité, vision système.

---

## 💡 Compétences techniques

| Domaine | Technologies |
|---------|-------------|
| **Cloud & Infra** | Kubernetes, Docker, ArgoCD, Helm, Kustomize, Proxmox, Talos Linux |
| **Data Engineering** | Python, Pandas, Prefect 3, SQL (SQL Server, PostgreSQL, MariaDB), ETL/ELT, Airbyte |
| **CI/CD & GitOps** | GitLab CI/CD, ArgoCD, Sealed Secrets, pre-commit hooks |
| **Observabilité** | Grafana, Loki, Promtail, logging structuré, alerting |
| **Qualité / Sécurité** | SAST (Semgrep, Bandit, Ruff security), OAuth2 (client_credentials & delegated), Azure AD / App Registrations, secret scanning |
| **Bases de données** | SQL Server, PostgreSQL, MariaDB, MongoDB, Redis, MinIO (S3) |
| **Développement** | Python, FastAPI, Frappe Framework, Streamlit, C, C++, C# |
| **Data Viz / BI** | Matplotlib, Dash, Power BI, Looker Studio, Apache Superset |
| **Automatisation low-code** | Power Automate, PowerApps, SharePoint, Microsoft 365 |
| **Systèmes** | Linux, Windows |
| **Gestion de projet** | GitLab (issues, boards, milestones), méthode Agile, cycle en V |

---

## 💼 Expériences professionnelles

### **Data / DevOps Engineer** — Neolithe | *Alternance · 2024 – 2026*

#### 📊 Pipelines ETL — Intégration ERP/MES
- **Mise en production de 4 pipelines ETL bidirectionnels** (Prefect 3) synchronisant ERP et MES en environnement industriel
- Fiabilisation des échanges : retry, backoff exponentiel, validation **Pydantic**, synchronisation incrémentale avec **delta tracking**
- Connecteurs **API REST (OAuth2)** et **ODBC (SQL Server)**, logging structuré, alerting
- **220+ tests pytest (69% de couverture)**, documentation Mermaid, CI/CD GitLab
- **Stack** : Python, Pandas, Prefect 3, SQL Server, Docker, Pydantic, GitLab CI/CD

#### ⚡ Power Platform — Intégration des factures fournisseurs
- **Solution d'intégration automatisée des factures fournisseurs** : **9 flux Power Automate** + **1 Canvas App** (PowerApps) pour la gestion des litiges
- Chaîne de bout en bout : email → extraction PDF → SharePoint → SFTP → **ERP Sylob**, notifications Teams, logging
- Industrialisation complète : environnements **DEV/PROD**, **21 variables**, pipeline **Power Platform CLI (pac)**, CI/CD GitLab pour export / vérification / déploiement
- **Stack** : Power Automate/Apps/Platform CLI, SharePoint, Outlook, Teams, SFTP, GitLab CI/CD

#### 🔬 Litho — Application de gestion de laboratoire
- Application de gestion de laboratoire sur **Frappe Framework** (36 modèles de données), architecture **EAV** pour formulaires d'analyse dynamiques
- Intégration ERP via ODBC, parsers d'instruments de laboratoire (Mastersizer, etc.), API BI (Superset, Power BI)
- 📧 Intégration **Microsoft Graph API** : override du module EmailAccount Frappe via **OAuth2 client_credentials** (Azure AD) ; contournement de la désactivation SMTP AUTH tenant sans SDK Microsoft. 25 tests unitaires (mocks `requests`), hook `after_migrate` idempotent, secrets chiffrés via SealedSecret
- **210+ tests**, CI/CD GitLab (lint Ruff → build → test → release)
- **Stack** : Python, Frappe v15, MariaDB, Redis, Docker, GitLab CI/CD, Microsoft Graph API

#### ☸️ Infrastructure Kubernetes — Platform Engineering
- **Conception et déploiement d'une plateforme Kubernetes on-premise** en approche **GitOps (ArgoCD)**
- **16 applications en production** : data (Airbyte, Superset), IoT (ThingsBoard), BI, stockage (MinIO), observabilité (Grafana/Loki)
- Configuration d'opérateurs Kubernetes (CNPG PostgreSQL, MariaDB, MinIO), stockage distribué (Longhorn)
- **Observabilité centralisée** (Grafana + Loki) et stratégie de backup (Kopia)
- **SealedSecrets Bitnami** : cycle de vie des secrets chiffrés (génération scriptée, rotation de nonce, scoping par namespace), **6 secrets × 2 environnements** (staging/prod)
- Standardisation des déploiements (Helm/Kustomize) → résilience et observabilité du SI
- **Stack** : Kubernetes, ArgoCD, Helm, Kustomize, Grafana, Loki, Sealed Secrets, PostgreSQL

---

### **Data Engineer** — Liora · Projet Crypto-bot | *Alternance · 2024 – 2026*

- Architecture et développement d'une plateforme de trading automatisé : **FastAPI + Streamlit + PostgreSQL + MongoDB**
- Conception d'un cluster **Kubernetes (Talos Linux, 3 nœuds)** sur hyperviseur Proxmox, avec accès sécurisé via **Cloudflare Tunnel**
- Mise en place d'un déploiement **GitOps (ArgoCD)** multi-environnement (dev/staging/prod) avec **Sealed Secrets**
- Architecture hybride on-premise + cloud, réduisant les coûts d'infrastructure de **97,5%**
- Monitoring centralisé (Grafana + Loki + Promtail), CI/CD GitLab complet
- Gestion de projet sur GitLab (issues, milestones, boards)
- **Stack** : Python, FastAPI, Streamlit, PostgreSQL, MongoDB, MinIO, Kubernetes, ArgoCD, Kustomize, GitLab CI/CD

---

### **Conceptrice / Développeuse Logiciel** — Creative Eurecom | *2007 – 2024 · Saint-Barthélemy-d'Anjou (49)*

- Conception et développement de logiciels embarqués classe A/B en **C**, conformes **ISO 13485** (dispositifs médicaux), sous contraintes temps réel
- Développement d'applications débarquées (**C++, C#**) : bancs de test de production, interfaces de pilotage, outils d'analyse
- Analyse de données de tests avec Python (pyplot, matplotlib) pour le suivi qualité
- Élaboration de plans de tests, exécution en simulation et sur cible, rédaction de rapports
- Développement de l'intranet d'entreprise sous **eGroupware** (PHP, MySQL, Ajax) : gestion de devis, commandes, fournisseurs, saisie des temps, fiches de non-conformité — **utilisé 15 ans** en production
- Prise en main de l'**ERP Sylob** (même ERP intégré aujourd'hui via ETL chez Neolithe)
- **Valorisation Data/DevOps** : rigueur temps réel (pipelines faible latence), bancs de test automatisés (data validation), analyse de données de production, norme ISO 13485 (qualité des données)

---

### **Conceptrice / Développeuse Logiciel** — Sojadis | *2005 – 2007 · Jallais (49)*

- Spécification et développement de logiciels embarqués C sous OS temps réel
- Création de systèmes de test automatique (LabView)
- Développement du site internet (PHP, MySQL, CSS, HTML)
- Réalisation de prototypes et industrialisation, installation et suivi client

---

### **Professeure de saxophone** · Job étudiante | *2000 – 2003 · Nantes (44)*

- Enseignement du saxophone à des élèves de niveaux variés
- Pédagogie, transmission, adaptation au niveau de chaque apprenant

---

## 🎓 Formation

| Période | Diplôme / Certification | Établissement |
|---------|------------------------|---------------|
| 2024 – 2026 | **Data Engineer par alternance** (RNCP 38919, Niveau 7) — en cours | Liora (ex-DataScientest) |
| 2004 – 2005 | **DUT GEII par alternance** Option Réseaux Locaux Industriels | IUT de Nantes |
| 2001 – 2004 | Niveau DEUG M.I.A.S. Option Physique | Université de Nantes |

### 📜 Certificats Liora (33) — 2024-2026

**Data Engineering & Big Data** — PySpark, Hadoop/Hive, Snowflake, dbt, SQL, MongoDB, Elasticsearch, Redis

**DevOps & Infrastructure** — Kubernetes, Docker, GitLab CI/CD, Bash/Linux

**Développement & API** — Python Data Engineer, POO, Tests Unitaires, FastAPI, Web Scraping

**Data Visualisation** — Matplotlib, Bokeh, Dash, Power BI, Looker Studio

**Machine Learning & IA** — scikit-learn, Keras (DNN, CNN), Drift Monitoring, MLFlow

**Data & Réglementation** — RGPD, Éthique IA et AI Act

### 📋 Autres certifications

- **En cours** — AWS Solutions Architect
- 2025 — AWS Cloud Quest: Cloud Practitioner
- 2024 — Cloud AWS, API REST (OpenClassrooms)
- 2022 — FreeRTOS
- 2021 — Dispositifs médicaux UE
- 2012 — Sûreté de fonctionnement
- 2023 — SST

---

## 🌍 Langues

- 🇬🇧 **Anglais** : B1 (documentation technique, README, commits)
- 🇩🇪 **Allemand** : A1

---

## 🎵 Centres d'intérêt

- 🎺 Soubassophone (fanfare Skroks), 🎷 Saxophone (Jingle Orchestra)
- 🎓 DFE Saxophone et solfège
- 🏛️ Ex-présidente fanfare À La Gueule du Ch'val
- 🏃 Course à pied, Boxe thaï, Taïso, Trek

---

*Mis à jour le 15/04/2026*
