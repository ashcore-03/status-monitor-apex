# Status Monitor – Real-Time Production Dashboard (Oracle APEX)

## Overview
Status Monitor is a real-time industrial production monitoring web application built with Oracle APEX. It turns live extrusion production data into a dashboard of operational metrics: machine status, production quantity, shift performance (KG/HR) and production history.

The application integrates JSON-based live data feeds with Oracle REST APIs (ORDS) and PowerShell automation scripts, so the dashboard updates continuously without manual data entry.

---

## Key Metrics Tracked

| Metric | What it shows |
|---|---|
| Live extrusion status | Current state of production |
| Production quantity | Output tracked in real time |
| Shift KG/HR | Shift-wise throughput |
| Production history | Past output for review |

---

## Data Flow

```
Live JSON production data
        |
        v
PowerShell script (scheduled refresh)
        |
        v
Oracle REST APIs (ORDS)
        |
        v
SQL / PL-SQL (data handling)
        |
        v
Oracle APEX dashboard (auto-refreshing, desktop + mobile)
```

---

## Data & Analytics Highlights

- Integrated live JSON data through REST APIs using Oracle REST Data Services (ORDS)
- Used SQL / PL-SQL for data handling behind the dashboard
- Automated recurring data updates with PowerShell, replacing manual entry
- Built an auto-refreshing KPI dashboard with production history views
- Designed a responsive, mobile-friendly interface with a dark mode UI

---

## Features

- Real-time production monitoring
- Live extrusion status dashboard
- REST API integration using ORDS
- JSON data handling and automation
- Auto-refreshing dashboard
- Production quantity tracking
- Shift KG/HR monitoring
- Production history display
- Dark mode UI
- Mobile-friendly web app

---

## Technologies Used

| Area | Tools |
|---|---|
| Dashboard | Oracle APEX |
| Data access | Oracle REST Data Services (ORDS), REST APIs, JSON |
| Data handling | SQL, PL/SQL |
| Automation | PowerShell |
| Front end | HTML, CSS, JavaScript |

---

## Project Structure

```
/apex          → Oracle APEX application exports
/json          → Sample JSON data files
/scripts       → PowerShell automation scripts
/screenshots   → Application screenshots
```

---

## Purpose

This project was developed as an industrial monitoring solution for extrusion production environments, to visualize live operational data in a clean and efficient dashboard interface.

---

## Skills Demonstrated

SQL and PL/SQL, REST APIs and JSON, data automation, KPI dashboard design, operational reporting

---

## Author

Developed by Aashika Anil N | [GitHub](https://github.com/ashcore-03)
