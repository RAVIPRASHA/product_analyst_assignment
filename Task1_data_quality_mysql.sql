
-- Task 1: Data Quality Assessment in MySQL Format

-- 1. Missing Values in TotalCharges (empty strings)
SELECT 
  COUNT(*) AS total_records,
  SUM(CASE WHEN TRIM(TotalCharges) = '' THEN 1 ELSE 0 END) AS missing_totalcharges
FROM telco_churn;

-- 2. Data Type Inconsistencies: TotalCharges with non-numeric values
SELECT customerID, TotalCharges
FROM telco_churn
WHERE TRIM(TotalCharges) = '' OR TotalCharges REGEXP '[^0-9\.]';

-- 3. Logical Inconsistencies: Large deviations in TotalCharges vs MonthlyCharges * tenure
SELECT customerID, tenure, MonthlyCharges, TotalCharges
FROM telco_churn
WHERE TRIM(TotalCharges) != ''
  AND ABS(CAST(TotalCharges AS DECIMAL(10,2)) - (MonthlyCharges * tenure)) > 50;

-- 4. Duplicate Records based on customerID
SELECT customerID, COUNT(*) AS occurrences
FROM telco_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

-- 5. Outliers: MonthlyCharges very high or negative
SELECT *
FROM telco_churn
WHERE MonthlyCharges > 150 OR MonthlyCharges < 0;

-- 6. Outliers: TotalCharges very high or negative
SELECT *
FROM telco_churn
WHERE TRIM(TotalCharges) != ''
  AND (CAST(TotalCharges AS DECIMAL(10,2)) > 10000 OR CAST(TotalCharges AS DECIMAL(10,2)) < 0);
