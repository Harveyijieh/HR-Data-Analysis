-- HR Data Analysis
-- By Harvey Ijieh

-- Employee Gender Distribution
SELECT 
    gender, COUNT(*) AS employees
FROM
    hrdata
GROUP BY gender
ORDER BY employees;

-- Employee Department Distribution
SELECT 
    department, COUNT(*) AS employees
FROM
    hrdata
GROUP BY department
ORDER BY employees DESC;

-- Employee Job role Distribution 
SELECT 
    job_role, COUNT(*) AS employee
FROM
    hrdata
GROUP BY job_role
ORDER BY employee DESC;

-- Average age by department
SELECT 
    department, ROUND(AVG(age), 2) AS avg_age
FROM
    hrdata
GROUP BY department
ORDER BY avg_age DESC;

-- Overall Attrition Rate
SELECT 
    ROUND(COUNT(CASE
        WHEN attrition ilike 'Yes' THEN 1
    END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM
    hrdata;

-- Employee Department By Attrition Rate
SELECT department, 
       COUNT(*) AS total_employees, 
       ROUND(COUNT(CASE WHEN attrition ilike 'Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM hrdata
GROUP BY department
ORDER BY attrition_rate DESC;

-- Attrition By Job Role
SELECT job_role, 
       ROUND(COUNT(CASE WHEN attrition ilike 'yes' THEN 1 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM hrdata
GROUP BY job_role
ORDER BY attrition_rate DESC;

-- Job Satisfaction BY Attrition
SELECT job_satisfaction, 
       COUNT(*) AS total_employees, 
       ROUND(COUNT(CASE WHEN attrition ilike 'yes' THEN 1 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM hrdata
GROUP BY job_satisfaction
ORDER BY job_satisfaction DESC;

select count (*), attrition_label
from hrdata
group by attrition_label;