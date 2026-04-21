### 📊 Manufacturing KPI Intelligence System

**Enterprise-grade manufacturing KPI platform using SQL Server, Power BI, Power Query, DAX, and SharePoint with fully automated ETL and 30+ KPIs.**

***

## 🔍 Project Overview

This project demonstrates the design and implementation of a **plant-level KPI intelligence system** that integrates multiple enterprise data sources into a **single source of truth** for manufacturing performance reporting.

The solution supports **Production, Quality, Supply Chain, and Maintenance** analytics with fully automated refresh and interactive drill-through dashboards.

***

## 🛠️ Tech Stack

*   **SQL Server** – Central data warehouse & star schema modeling
*   **Power BI** – KPI dashboards & analytics
*   **Power Query** – ETL & data transformation
*   **DAX** – 30+ business KPIs & time intelligence
*   **SharePoint & Excel** – Source systems
*   **Power BI Gateway** – Automated scheduled refresh

***

## 🏗️ Architecture

    SharePoint / Excel
            ↓
       Power Query (ETL)
            ↓
         SQL Server
       (Star Schema)
            ↓
          Power BI
       (DAX Measures)
            ↓
     Automated Refresh
     (Power BI Gateway)

***

## 📈 Key KPIs Implemented

### 🔹 Production

*   Overall Equipment Effectiveness (OEE)
*   Plan vs Actual Production
*   Downtime Analysis
*   Throughput & Yield

### 🔹 Quality

*   First Pass Yield (FPY)
*   Rejection Rate
*   Defect Trend Analysis

### 🔹 Supply Chain

*   On-Time Delivery (OTD)
*   Inventory Turnover
*   Material Shortage Analysis

### 🔹 Maintenance

*   Mean Time Between Failures (MTBF)
*   Mean Time To Repair (MTTR)
*   Preventive vs Breakdown Maintenance

***

## 🚀 Key Achievements

*   ✅ Integrated **SQL Server, SharePoint, and Excel** into a unified star-schema model
*   ✅ Built **30+ DAX measures** with drill-through & trend analysis
*   ✅ Implemented **Power BI Gateway** for fully automated refresh
*   ✅ Reduced **manual reporting by 12+ hours/week**
*   ✅ Enabled **real-time KPI visibility** for plant-level decision-making

***

## 📂 Repository Structure

    manufacturing-kpi-intelligence-system/
    │
    ├── sql/
    │   ├── star_schema.sql
    │   ├── fact_tables.sql
    │   └── dimension_tables.sql
    │
    ├── powerbi/
    │   └── manufacturing_kpi_dashboard.pbix
    │
    ├── dax/
    │   └── kpi_measures.md
    │
    ├── docs/
    │   └── architecture_diagram.png
    │
    ├── screenshots/
    │   └── dashboard_preview.png
    │
    └── README.md

***

## 📸 Dashboard Preview

*(Add Power BI screenshots here – blurred or sample data is fine)*

***

## 🔐 Data Disclaimer

> This project uses **synthetic / masked data**.  
> No confidential or proprietary company data is included.
