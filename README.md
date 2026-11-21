# 🛡️ SCAMSHIELD AI
### Intelligent Suspicious Message Detection & Cyber Threat Awareness Platform

> **Hackathon Domain:** Cybersecurity  
> **Problem Statement:** PS01 – ScamShield: Suspicious Message Detector  
> **Architecture:** Zero External AI Dependency • Explainable Heuristics • Local Privacy  

---

## 📌 Executive Overview

**ScamShield AI** is an advanced, production-grade cybersecurity platform engineered to protect citizens and enterprises from digital fraud in SMS, WhatsApp, and digital messages. 

Modern cybercriminals exploit artificial urgency, credential phishing, and obfuscated links. Rather than relying on fragile, hallucination-prone, or costly third-party AI APIs, ScamShield AI operates on a **deterministic, explainable heuristic threat analysis engine** coupled with **passive URL intelligence**, **bilingual English/Hindi pattern detection**, and an **interactive Threat Awareness Hub**.

---

## ⚡ Key Highlights

- **Interactive 3D Cyber Command Centre:** Large procedural 3D metallic cyber shield with glowing particles, animated digital network constellation, and a 3D threat radar sweeping visualization built with Three.js, React Three Fiber, Drei, and Framer Motion.
- **Reactive 3D Shield Telemetry:** The 3D Cyber Shield dynamically reacts to real-time message and URL scans, surging with **electric emerald green** for verified safe alerts, and triggering **crimson red warning alarms and tremor effects** for phishing attacks.
- **100% Zero-Paid AI Key Dependency:** Fully functional offline or in air-gapped environments without requiring OpenAI, Anthropic, or external API keys.
- **Explainable Weighted Risk Scoring (0–100):** Every flagged message produces an explainable threat index, identified attack tactic, and syntactic trigger phrase breakdown.
- **Passive URL Intelligence:** Dissects links (URL shorteners, IP hosts, typosquatting brand spoofing, high-risk TLDs) **without opening or sending HTTP requests** to dangerous endpoints.
- **Bilingual & Hinglish Recognition:** Dedicated rule engines for English, Devanagari Hindi (e.g. *बिजली बिल काटना*, *खाता ब्लॉक*), and Romanized Hinglish (*"khata band ho jayega"*).
- **Persistent SQLite Audit Log:** Automatically saves threat audits with fast filtering, JSON export, and single/bulk deletion.
- **Cyber Defense Playbook:** Interactive awareness encyclopedia covering modern scams (*Electricity disconnection, Bank KYC scareware, Telegram task scams, Digital arrest extortion, Reverse UPI QR fraud*).

---

## 🏗️ Technology Stack

| Layer | Technologies |
|---|---|
| **3D Cyber Graphics** | Three.js, React Three Fiber (`@react-three/fiber`), Drei (`@react-three/drei`), Framer Motion |
| **Frontend** | React 18, Vite 5, Tailwind CSS, Recharts, Lucide React |
| **Backend** | Python 3.14, FastAPI, Pydantic v2, Uvicorn |
| **Database** | SQLite3 (Persistent local relational storage) |
| **Testing** | Python `unittest`, Playwright E2E |

---

## 🚀 Quick Start Guide

### 🖱️ 1-Click Windows Launcher (Fastest)
Simply **double-click** the batch files in the project root:
- **`START_SCAMSHIELD.bat`**: Automatically checks ports, launches both backend and frontend servers in minimized background windows, waits for frontend initialization, and opens your default browser to `http://127.0.0.1:5173`. Avoids duplicating processes if already running.
- **`STOP_SCAMSHIELD.bat`**: Safely terminates all active background server processes on ports 8000 and 5173.

---

### Alternative: PowerShell Launchers
- **Start All**: `.\start.ps1`
- **Backend Only**: `.\run_backend.ps1` (`http://127.0.0.1:8000`)
- **Frontend Only**: `.\run_frontend.ps1` (`http://127.0.0.1:5173`)

---

## 🧪 Testing & Verification

### Run Backend Unit Tests:
```powershell
.\run_tests.ps1
```
*Executes all 9 threat engine and database unit test suites verifying URL inspection, Hindi parsing, bank dampeners, and database CRUD.*

---

## 📡 Backend API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| `POST` | `/api/analyze` | Evaluates message text, calculates risk score (0-100), extracts URLs, saves to DB |
| `GET` | `/api/stats` | Returns aggregate dashboard metrics, category distribution & severity breakdown |
| `GET` | `/api/history` | Fetches audit history list with pagination and summaries |
| `GET` | `/api/history/{id}` | Retrieves full explainable forensic report for a past scan |
| `DELETE` | `/api/history/{id}` | Deletes a single scan record |
| `DELETE` | `/api/history` | Purges all scan history |
| `GET` | `/api/examples` | Returns preset demo scenarios for 1-click hackathon demonstration |
| `GET` | `/api/health` | Health check and engine capabilities |

---

## 🛡️ Safety & Privacy Charter
1. **Advisory Assessment:** ScamShield scores are probabilistic and heuristic. They are designed to empower user vigilance and do not replace formal verification with official banking channels.
2. **No Credential Harvesting:** ScamShield never solicits, collects, or stores real passwords, banking credentials, or live OTPs.
3. **Local Data Isolation:** All audit logs reside exclusively inside the user's local `scamshield.db` SQLite database file.

---
© 2026 ScamShield AI — Hackathon Prototype for Cyber Threat Awareness.
