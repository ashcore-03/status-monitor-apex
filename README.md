# Production Status Monitor (Oracle APEX)

A real-time operational dashboard that turns live production-line data (JSON over REST APIs) into KPIs: extrusion status, quantity produced, shift-wise throughput (KG/HR) and production history. Built for plant-floor staff on desktop and mobile.

Built during my internship at Hindalco Industries (Aditya Birla Group).

## The problem
Production data was updated through manual entry, so dashboards lagged behind what was actually happening on the line. The goal was a dashboard that always reflects current data without anyone updating it by hand.

## KPIs and metrics tracked
| Metric | What it shows |
|---|---|
| Live extrusion status | Current state of each production line |
| Production quantity | Output tracked across the day |
| Throughput (KG/HR) by shift | Shift-wise productivity |
| Production history | Past output for trend review |

## Data flow
```
Production data (JSON feed)
        |
        v
REST API (Oracle REST Data Services)
        |
        v
SQL / PL-SQL  (parse, transform, aggregate)
        |
        v
Oracle APEX dashboards (auto-refresh, desktop + mobile)

PowerShell scheduled script keeps the data refreshed
```

## Data and SQL highlights
- Integrated live JSON data through REST APIs using Oracle ORDS
- Used SQL / PL-SQL to process and aggregate production data for the dashboard
- Automated recurring data updates with scheduled PowerShell scripts, replacing manual entry
- Designed a responsive, auto-refreshing dashboard with a dark mode UI
- [Add one measurable detail, e.g. number of lines monitored, refresh interval, or users]

## Impact
- Removed manual data entry from the update process
- Gave plant-floor staff live visibility of production from any device
- [Add a real result if you have one, e.g. "dashboard refreshes every X minutes"]

## Tech stack
| Area | Tools |
|---|---|
| Dashboard | Oracle APEX |
| Data access | Oracle REST Data Services (ORDS), REST APIs, JSON |
| Data processing | SQL, PL/SQL |
| Automation | PowerShell |
| Front end | HTML, CSS, JavaScript |

## Skills demonstrated
SQL and PL/SQL, REST APIs and JSON, data automation, KPI dashboard design, data reporting

## Project structure
[Keep the Project Structure section from your current README here]
