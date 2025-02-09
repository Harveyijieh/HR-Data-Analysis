# HR Data Analysis
### "Work in progress"
## Project Overview 
This project aims to analyze HR data using PostgreSQL for querying and Tableau for visualization. The goal is to uncover insights related to employee attrition, job satisfaction, and workforce distribution. The analysis will help organizations make data-driven decisions to improve employee retention and satisfaction.

### Project Objectives

- Understand employee demographics and workforce distribution

- Determine attrition rates and key influencing factors

- Explore job satisfaction trends and their impact on attrition

- (Identify patterns in business travel and attrition)

- Create visual representations of findings using Tableau

### Data Source
The dataset used for this project consists of 1,470 employee records and contains various HR attributes. 
The data was sourced from an HR analytics dataset, which includes information on employee demographics, job roles, education, attrition, and satisfaction levels.

### Tools
- Excel - For Exploring the dataset

- Postgres - For querying and data analysis [Download here](https://www.postgresql.org/)

- Tableau - For visualization and interactive dashboards [Download here](https://www.tableau.com/products/public/download)

- GitHub - For version control and project sharing [Sign Up](https://github.com/)

### Findings 

- Attrition Rate: The overall attrition rate in the dataset is approximately 16%.

- Department-Wise Attrition: The Sales and R&D departments have the highest attrition rates.

- Job Satisfaction vs Attrition: Employees with lower job satisfaction (1-2) are more likely to leave.

- Business Travel Impact: Employees who frequently travel for business tend to have higher attrition rates.

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

### Conclusions
Conclusion

This project helps analyze HR data, identify attrition factors, and visualize workforce trends using PostgreSQL and Tableau/Power BI. Feel free to fork, modify, or contribute!

💻
