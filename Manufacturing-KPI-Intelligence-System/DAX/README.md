# DAX Measures – Manufacturing KPI Intelligence System

This folder documents sample DAX measures used in the Manufacturing KPI Intelligence System.
The measures represent standardized KPI logic across Safety, Quality, Energy, Production, SCM, and Maintenance domains.

> Note:  
> These are representative/sample measures created for portfolio documentation.
> Actual production models may contain additional logic and data validation.

---

## 🦺 Safety KPIs

### Recordable Incident Rate (RIR)
```dax
RIR :=
DIVIDE ( [Total Recordable Incidents], [Total Man Hours] ) * 200000
HMS Closure % :=
DIVIDE ( [HMS Closed], [HMS Identified] )
Rejection % :=
DIVIDE ( [Rejected Quantity], [Produced Quantity] )
Total Complaints :=
[Internal Complaints] + [External Complaints]
Total Energy (kWh) :=
SUM ( Energy_Data[Consumption_kWh] )
DG to EB Ratio :=
DIVIDE ( [DG Consumption], [EB Consumption] )
OTIF % :=
DIVIDE ( [OTIF Orders], [Total Orders] )
Inventory Days :=
DIVIDE ( [Average Inventory], [Daily Consumption] )
OEE :=
[Availability] * [Performance] * [Quality]
MTBF :=
DIVIDE ( [Operating Time], [Number of Failures] )
MTTR :=
DIVIDE ( [Total Repair Time], [Number of Breakdowns] )
Total Water Consumption :=
SUM ( Water_Data[Water_Consumed] )
Water Loss % :=
DIVIDE ( [Water Loss], [Total Water Intake] )
