-- Data Validation
SELECT *
FROM manufacturing_data
WHERE Production IS NULL OR Defects IS NULL;

-- Total Production
SELECT SUM(Production) AS Total_Production
FROM manufacturing_data;

-- Defect Rate
SELECT 
    (SUM(Defects) * 100.0 / SUM(Production)) AS Defect_Rate
FROM manufacturing_data;

-- Department-wise Production
SELECT Department, SUM(Production) AS Total_Output
FROM manufacturing_data
GROUP BY Department;
