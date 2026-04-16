# Nathalie AVRIL

**Data / DevOps Engineer**

> Angers (49), France | Driving licence
> [LinkedIn](https://www.linkedin.com/in/nathalie-avril) | [GitLab](https://gitlab.com/datiara/public) | [GitHub](https://github.com/Datiara)

---

## 📝 Profile

Data / DevOps Engineer combining **19 years of expertise in industrial embedded software development** with a specialisation in **data engineering & platform engineering**. I design and deploy reliable, scalable data systems (ETL, Kubernetes, GitOps), with a focus on **automation, observability and robustness**. Hybrid profile: industrial rigour, quality & security culture, systems thinking.

---

## 💡 Technical Skills

| Area | Technologies |
|------|-------------|
| **Cloud & Infra** | Kubernetes, Docker, ArgoCD, Helm, Kustomize, Proxmox, Talos Linux |
| **Data Engineering** | Python, Pandas, Prefect 3, SQL (SQL Server, PostgreSQL, MariaDB), ETL/ELT, Airbyte |
| **CI/CD & GitOps** | GitLab CI/CD, ArgoCD, Sealed Secrets, pre-commit hooks |
| **Observability** | Grafana, Loki, Promtail, structured logging, alerting |
| **Quality / Security** | SAST (Semgrep, Bandit, Ruff security), OAuth2 (client_credentials & delegated), Azure AD / App Registrations, secret scanning |
| **Databases** | SQL Server, PostgreSQL, MariaDB, MongoDB, Redis, MinIO (S3) |
| **Development** | Python, FastAPI, Frappe Framework, Streamlit, C, C++, C# |
| **Data Viz / BI** | Matplotlib, Dash, Power BI, Looker Studio, Apache Superset |
| **Low-code Automation** | Power Automate, PowerApps, SharePoint, Microsoft 365 |
| **Systems** | Linux, Windows |
| **Project Management** | GitLab (issues, boards, milestones), Agile, V-model |

---

## 💼 Professional Experience

### **Data / DevOps Engineer** — Neolithe | *Work-study · 2024 – 2026*

#### 📊 ETL Pipelines — ERP/MES Integration
- **Production deployment of 4 bidirectional ETL pipelines** (Prefect 3) synchronising ERP and MES in an industrial environment
- Reliability engineering: retry, exponential backoff, **Pydantic** validation, incremental synchronisation with **delta tracking**
- **REST API (OAuth2)** and **ODBC (SQL Server)** connectors, structured logging, alerting
- **220+ pytest tests (69% coverage)**, Mermaid documentation, GitLab CI/CD
- **Stack**: Python, Pandas, Prefect 3, SQL Server, Docker, Pydantic, GitLab CI/CD

#### ⚡ Power Platform — Supplier Invoice Integration
- **Automated supplier invoice integration solution**: **9 Power Automate flows** + **1 Canvas App** (PowerApps) for dispute management
- End-to-end pipeline: email → PDF extraction → SharePoint → SFTP → **ERP Sylob**, with Teams notifications and logging
- Full industrialisation: **DEV/PROD environments**, **21 environment variables**, **Power Platform CLI (pac)** deployment pipeline, GitLab CI/CD for export / validation / deployment
- **Stack**: Power Automate/Apps/Platform CLI, SharePoint, Outlook, Teams, SFTP, GitLab CI/CD

#### 🔬 Litho — Laboratory Management Application
- Laboratory management application built on **Frappe Framework** (36 data models), **EAV** architecture for dynamic analysis forms
- ERP integration via ODBC, laboratory instrument parsers (Mastersizer, etc.), BI API (Superset, Power BI)
- 📧 **Microsoft Graph API** integration: override of Frappe's EmailAccount module via **OAuth2 client_credentials** (Azure AD), bypassing tenant SMTP AUTH deactivation without using the Microsoft SDK. 25 unit tests (`requests` mocks), idempotent `after_migrate` hook, secrets encrypted via SealedSecret
- **210+ tests**, GitLab CI/CD (Ruff lint → build → test → release)
- **Stack**: Python, Frappe v15, MariaDB, Redis, Docker, GitLab CI/CD, Microsoft Graph API

#### ☸️ Kubernetes Infrastructure — Platform Engineering
- **Design and rollout of an on-premise Kubernetes platform** using a **GitOps (ArgoCD)** approach
- **16 applications in production**: data (Airbyte, Superset), IoT (ThingsBoard), BI, storage (MinIO), observability (Grafana/Loki)
- Kubernetes operator configuration (CNPG PostgreSQL, MariaDB, MinIO), distributed storage (Longhorn)
- **Centralised observability** (Grafana + Loki) and backup strategy (Kopia)
- **Bitnami SealedSecrets**: encrypted secret lifecycle management (scripted generation, nonce rotation, namespace scoping), **6 secrets × 2 environments** (staging/prod)
- Deployment standardisation (Helm/Kustomize) → resilience and observability of the IS
- **Stack**: Kubernetes, ArgoCD, Helm, Kustomize, Grafana, Loki, Sealed Secrets, PostgreSQL

---

### **Data Engineer** — Liora · Crypto-bot Project | *Work-study · 2024 – 2026*

- Architecture and development of an automated trading platform: **FastAPI + Streamlit + PostgreSQL + MongoDB**
- **Kubernetes cluster (Talos Linux, 3 nodes)** on Proxmox hypervisor, secured access via **Cloudflare Tunnel**
- **GitOps (ArgoCD)** multi-environment deployment (dev/staging/prod) with **Sealed Secrets**
- Hybrid on-premise + cloud architecture, reducing infrastructure costs by **97.5%**
- Centralised monitoring (Grafana + Loki + Promtail), full GitLab CI/CD
- Project management on GitLab (issues, milestones, boards)
- **Stack**: Python, FastAPI, Streamlit, PostgreSQL, MongoDB, MinIO, Kubernetes, ArgoCD, Kustomize, GitLab CI/CD

---

### **Software Designer / Developer** — Creative Eurecom | *2007 – 2024 · Saint-Barthélemy-d'Anjou (49)*

- Design and development of class A/B embedded software in **C**, **ISO 13485** compliant (medical devices), real-time constraints
- Desktop application development (**C++, C#**): production test benches, control interfaces, analysis tools
- Test data analysis with Python (pyplot, matplotlib) for quality monitoring
- Test plan development, simulation and on-target execution, report writing
- Company intranet development on **eGroupware** (PHP, MySQL, Ajax): quotes, orders, suppliers, timesheets, non-conformance reports — **used 15 years** in production
- Onboarding of **ERP Sylob** (same ERP integrated today via ETL at Neolithe)
- **Data/DevOps value**: real-time rigour (low-latency pipelines), automated test benches (data validation), production data analysis, ISO 13485 (data quality)

---

### **Software Designer / Developer** — Sojadis | *2005 – 2007 · Jallais (49)*

- Specification and development of embedded C software under real-time OS
- Automated test system creation (LabView)
- Company website development (PHP, MySQL, CSS, HTML)
- Prototyping and industrialisation, customer installation and support

---

### **Saxophone Teacher** · Student job | *2000 – 2003 · Nantes (44)*

- Saxophone teaching to students of various levels
- Pedagogy, knowledge transfer, adaptation to each learner's level

---

## 🎓 Education

| Period | Degree / Certification | Institution |
|--------|----------------------|-------------|
| 2024 – 2026 | **Data Engineer work-study programme** (RNCP 38919, Level 7) — in progress | Liora (ex-DataScientest) |
| 2004 – 2005 | **DUT GEII (2-year technical degree) work-study** Industrial Networks | IUT de Nantes |
| 2001 – 2004 | DEUG level in Maths, CS & Physics | University of Nantes |

### 📜 Liora Certificates (33) — 2024-2026

**Data Engineering & Big Data** — PySpark, Hadoop/Hive, Snowflake, dbt, SQL, MongoDB, Elasticsearch, Redis

**DevOps & Infrastructure** — Kubernetes, Docker, GitLab CI/CD, Bash/Linux

**Development & API** — Python Data Engineer, OOP, Unit Testing, FastAPI, Web Scraping

**Data Visualisation** — Matplotlib, Bokeh, Dash, Power BI, Looker Studio

**Machine Learning & AI** — scikit-learn, Keras (DNN, CNN), Drift Monitoring, MLFlow

**Data & Regulations** — GDPR, AI Ethics & AI Act

### 📋 Other Certifications

- **In progress** — AWS Solutions Architect
- 2025 — AWS Cloud Quest: Cloud Practitioner
- 2024 — AWS Cloud, REST API (OpenClassrooms)
- 2022 — FreeRTOS
- 2021 — EU Medical Devices
- 2012 — Dependability Engineering
- 2023 — First Aid (SST)

---

## 🌍 Languages

- 🇬🇧 **English**: B1 (technical documentation, README, commits)
- 🇩🇪 **German**: A1

---

## 🎵 Interests

- 🎺 Sousaphone, 🎷 Saxophone
- 🎓 Saxophone & Music Theory Diploma
- 🏃 Running, Thai Boxing, Taiso, Trekking

---

*Updated 15/04/2026*
