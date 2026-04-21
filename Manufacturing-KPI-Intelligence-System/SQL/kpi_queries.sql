/* =========================================================
   Manufacturing KPI Intelligence System
   Sample SQL Queries for KPI Preparation
   Note: This file represents generic SQL logic used for
   cleaning and preparing manufacturing KPI data.
   ========================================================= */


/* -----------------------------
   1. Production KPI Base Data
   ----------------------------- */
SELECT
    Plant_Name,
    Production_Date,
    SUM(Produced_Quantity) AS Total_Production,
    SUM(Rejected_Quantity) AS Total_Rejection
FROM Production_Data
GROUP BY Plant_Name, Production_Date;


/* -----------------------------
   2. Safety Incidents by Department
   ----------------------------- */
SELECT
    Department,
    COUNT(Incident_ID) AS Total_Incidents
FROM Safety_Incidents
GROUP BY Department;


/* -----------------------------
   3. Quality Rejection Summary
   ----------------------------- */
SELECT
    Product,
    SUM(Rejected_Quantity) AS Rejected_Qty,
    SUM(Produced_Quantity) AS Produced_Qty
FROM Quality_Data
GROUP BY Product;


/* -----------------------------
   4. Energy Consumption Summary
   ----------------------------- */
SELECT
    Energy_Source,
    SUM(Consumption_kWh) AS Total_kWh_Consumed
FROM Energy_Consumption
GROUP BY Energy_Source;


/* -----------------------------
   5. Inventory and OTIF View
   ----------------------------- */
SELECT
    Product,
    AVG(Inventory_Days) AS Avg_Inventory_Days,
    SUM(CASE WHEN OTIF_Flag = 'Y' THEN 1 ELSE 0 END) AS OTIF_Orders
FROM SupplyChain_Data
GROUP BY Product;


/* -----------------------------
   6. Maintenance Metrics
   ----------------------------- */
SELECT
    Equipment,
    SUM(Breakdown_Hours) AS Total_Downtime,
    COUNT(Breakdown_ID) AS Breakdown_Count
FROM Maintenance_Data
GROUP BY Equipment;
``
