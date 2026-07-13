-- =====================================================
-- Customer Count by Card Category
-- =====================================================

SELECT Card_Category, COUNT(*) AS Customers FROM customers GROUP BY Card_Category;


-- =====================================================
-- Churn Rate by Card Category
-- =====================================================

SELECT Card_Category, COUNT(*) AS Customers, ROUND(100.0 * SUM(CASE WHEN Attrition_Flag='Attrited Customer' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate 
FROM customers GROUP BY Card_Category;


-- =====================================================
-- Churn Rate by Income Category
-- =====================================================

SELECT Income_Category, COUNT(*) AS Customers, ROUND(100.0 * SUM(CASE WHEN Attrition_Flag='Attrited Customer' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Churn_Rate
FROM customers GROUP BY Income_Category;