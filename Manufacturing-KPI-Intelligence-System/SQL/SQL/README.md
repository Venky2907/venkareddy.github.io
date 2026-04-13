-- 1. Data Validation: Check missing values
SELECT *
FROM manufacturing_data
WHERE Production IS NULL 
   OR Defects IS NULL;

--------------------------------------------------

-- 2. Remove duplicate records (checking duplicates)
SELECT Date, Machine_ID, COUNT(*) AS Duplicate_Count
FROM manufacturing_data
GROUP BY Date, Machine_ID
HAVING COUNT(*) > 1;

--------------------------------------------------

-- 3. Join multiple department data (example)
SELECT p.Date, p.Production, q.Defects, m.Efficiency
FROM production_data p
JOIN quality_data q ON p.Date = q.Date
JOIN maintenance_data m ON p.Machine_ID = m.Machine_ID;

--------------------------------------------------

-- 4. KPI Calculation: Total Production
SELECT SUM(Production) AS Total_Production
FROM manufacturing_data;

--------------------------------------------------

-- 5. KPI Calculation: Defect Rate
SELECT 
    (SUM(Defects) * 100.0 / SUM(Production)) AS Defect_Rate
FROM manufacturing_data;

--------------------------------------------------

-- 6. Department-wise KPI
SELECT Department, SUM(Production) AS Total_Output
FROM manufacturing_data
GROUP BY Department;

--------------------------------------------------

-- 7. Identify Low Performing Machines
SELECT Machine_ID, AVG(Efficiency) AS Avg_Efficiency
FROM manufacturing_data
GROUP BY Machine_ID
ORDER BY Avg_Efficiency ASC;
