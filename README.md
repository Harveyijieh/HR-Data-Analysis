# HR Data Analysis

### Project Overview 
---
This project aims to analyse HR data using PostgreSQL for querying and Tableau for visualisation. The goal is to uncover insights related to employee attrition and workforce distribution. The analysis will help organizations make data-driven decisions to improve employee retention and satisfaction.

### Project Objectives

- Understand employee demographics and workforce distribution

- Determine attrition rates and key influencing factors

- Create visual representations of findings using Tableau

### Data Source
The dataset used for this project consists of 1,470 employee records and contains various HR attributes. 
The data was sourced from a popular HR analytics dataset, which includes information on employee demographics, job roles, education, attrition, and others.

### Tools
- Excel - for exploring the dataset

- Postgres - for querying and data analysis [Download here](https://www.postgresql.org/)

- Tableau - for visualisation and interactive dashboards [Download here](https://www.tableau.com/products/public/download)

- GitHub - for version control and project sharing [Sign Up](https://github.com/)

### Findings 

- Attrition Rate: The overall attrition rate in the dataset is approximately 16%.

- Department-Wise Attrition: The Sales and R&D departments have the highest attrition rates.

- Age Factor: Younger employees (below 30) show higher attrition compared to older employees.

These insights help HR teams focus on retention strategies by improving job satisfaction, adjusting travel policies, and addressing department-specific concerns.

### SQL Queries and Insights
#### Employee Gender Distribution
```sql
SELECT 
    gender, COUNT(*) AS employees
FROM 
    hrdata
GROUP BY gender
ORDER BY employees;
```
#### Attrition By Department

```sql
SELECT department, 
       COUNT(*) AS total_employees, 
       ROUND(COUNT(CASE WHEN attrition ilike 'Yes' THEN 1 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM
    hrdata
GROUP BY department
ORDER BY attrition_rate DESC;
```

### Visualisation in Tableau
For the data visualization aspect of this project, I utilized Tableau. Tableau was used to create interactive and insightful visualizations that helped to better understand and analyze the HR data. Below is the dashbaord created using Tableau:
- [View Dashboard](https://public.tableau.com/app/profile/harvey.ijieh/viz/HRAnalyticsUpload/HRDASHBOARD)
### Conclusions

This project helps analyze HR data, identify attrition factors, and visualize workforce trends using PostgreSQL and Tableau.

💻
