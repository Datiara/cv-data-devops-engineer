# Nathalie AVRIL

**Data / DevOps Engineer**

> Trélazé (49) | Permis B
> [LinkedIn](https://www.linkedin.com/in/nathalie-avril) | [GitLab](https://gitlab.com/datiara/public) | [GitHub](https://github.com/Datiara)

---

## 📝 Profil

Data/DevOps Engineer en reconversion après 19 ans de développement logiciel embarqué industriel. Expérience concrète en conception de pipelines ETL, intégration de systèmes industriels (ERP/MES), déploiement Kubernetes et GitOps en environnement de production. Profil hybride alliant rigueur industrielle, maîtrise de la donnée et culture DevOps.

---

## 💡 Compétences techniques

| Domaine | Technologies |
|---------|-------------|
| **Data Engineering** | Python, Pandas, Prefect 3, SQL (SQL Server, PostgreSQL, MariaDB), ETL/ELT |
| **DevOps / Infra** | Kubernetes, ArgoCD (GitOps), Helm, Docker, CI/CD GitLab, Sealed Secrets |
| **Développement** | Python, FastAPI, Frappe Framework, Streamlit, C, C++, C# |
| **Bases de données** | SQL Server, PostgreSQL, MariaDB, MongoDB, Redis, MinIO (S3) |
| **Data Viz / BI** | Matplotlib, Dash, Power BI, Looker Studio, Apache Superset, Airbyte |
| **Observabilité** | Grafana, logging structuré, alerting Teams |
| **Systèmes** | Linux, Windows, Proxmox, Talos Linux |
| **Gestion de projet** | GitLab (issues, boards, milestones), méthode Agile, cycle en V |
| **IA & Productivité** | Claude Code, Perplexity — pair-programming, revue de code, architecture |

---

## 💼 Expériences professionnelles

### **Data / DevOps Engineer** — Neolithe | *Alternance · 2024 – 2026*

#### 📊 Pipelines ETL — Intégration ERP/MES
- Conception et développement de **4 pipelines ETL bidirectionnels** (Prefect 3) synchronisant un ERP et un MES en environnement de production industrielle
- Architecture de connecteurs **API REST (OAuth2)** et **ODBC (SQL Server)** avec retry, backoff exponentiel et gestion transactionnelle
- Implémentation d'une synchronisation incrémentale avec **delta tracking** pour optimiser les volumes de données transférés
- Validation des données avec **Pydantic**, logging structuré, alerting Microsoft Teams
- 220+ tests pytest (ratio couverture 69%), documentation technique avec diagrammes Mermaid
- **Stack** : Python, Pandas, Prefect 3, SQL Server, Docker, Pydantic, GitLab CI/CD

#### 🔬 Litho — Application de gestion de laboratoire
- Développement d'une application de gestion de laboratoire sur **Frappe Framework** (36 modèles de données)
- Conception d'une architecture **EAV** (Entity-Attribute-Value) pour formulaires d'analyse dynamiques
- Intégration ERP via ODBC, parsers d'instruments de laboratoire (Mastersizer, etc.)
- API BI pour Superset et Power BI, SQL views génériques pour le reporting
- 210+ tests, CI/CD GitLab (lint Ruff → build → test → release)
- **Stack** : Python, Frappe v15, MariaDB, Redis, Docker, GitLab CI/CD

#### ☸️ Infrastructure Kubernetes — Platform Engineering
- Déploiement et administration d'un cluster **Kubernetes on-premise** avec approche **GitOps (ArgoCD)**
- Gestion de **16 applications** en production : Litho, Airbyte, Superset, ThingsBoard, Grafana/Loki, MinIO
- Configuration d'opérateurs Kubernetes (CNPG PostgreSQL, MariaDB, MinIO), stockage distribué (Longhorn)
- Mise en place du monitoring centralisé (Grafana + Loki) et des stratégies de backup (Kopia)
- **Stack** : Kubernetes, ArgoCD, Helm, Kustomize, Grafana, Loki, PostgreSQL

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
- Formation et support du personnel, revues de code croisées, coordination interdépartementale (Hardware, CAO, Mécanique)
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
- 2024 — Cloud AWS, API REST (OpenClassrooms)
- 2022 — FreeRTOS
- 2021 — Dispositifs médicaux UE
- 2012 — Sûreté de fonctionnement
- 2023 — SST

---

## 🌍 Langues

- 🇬🇧 **Anglais** : B1 (documentation technique, README, commits)
- 🇩🇪 **Allemand** : B1

---

## 🎵 Centres d'intérêt

- 🎺 Soubassophone (fanfare Skroks), 🎷 Saxophone (Jingle Orchestra)
- 🎓 DFE Saxophone et solfège
- 🏛️ Ex-présidente fanfare À La Gueule du Ch'val
- 🏃 Course à pied, Boxe thaï, Taïso, Trek

---

*Mis à jour le 10/03/2026*
