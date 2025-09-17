## Project Title
Customer Behavior Analytics

## Brief One Line Summary
Comprehensive sales analytics of Istanbul malls to uncover customer trends, revenue drivers, and actionable retail strategies.

## Overview
This project delivers a structured analysis of retail sales data collected from shopping malls in Istanbul. The core objective is to provide stakeholders with data-driven insights into customer demographics, sales performance, and payment behavior, ultimately enabling better inventory planning, targeted marketing, and revenue optimization.

The intended audience includes retail executives, category managers, data analysts, and decision-makers responsible for strategic planning and operational efficiency. The deliverable is a set of analytical outputs and an interactive dashboard to monitor KPIs in real time.

By productionizing this workflow, the project ensures stakeholders can identify revenue leakage, adapt promotions based on customer demographics, and benchmark mall performance against peers. The pipeline is modular, transparent, and reproducible, ensuring governance and auditability of insights.

## Problem Statement
Retail businesses operating in Istanbul malls face revenue stagnation due to limited visibility into customer preferences, inventory inefficiencies, and fragmented marketing execution. The absence of consolidated analytics leads to lost opportunities in high-performing categories and misallocation of resources. Success for this project is defined by improved decision-making across KPIs including category-level sales growth, customer retention rate, and operational efficiency.

## Tools and Technologies
- **Languages:** Python 3.11, SQL  
- **Libraries:** pandas, numpy, matplotlib, seaborn, scikit-learn, statsmodels  
- **Visualization:** Power BI, matplotlib, seaborn  
- **Database:** MySQL 8.0  
- **Environment:** Anaconda, Docker (for containerization)  
- **Version Control:** Git/GitHub  
- **Dashboarding:** Power BI Desktop, Streamlit (optional extension)

## Methods
1. **Data Ingestion**  
   - Import raw retail sales CSV files and customer demographics dataset.  
   - Store structured data in MySQL.  

2. **Data Cleaning & Preprocessing**  
   - Handle missing values, correct data types, and normalize date formats.  
   - Remove duplicates and outliers using z-score filtering.  

3. **Feature Engineering**  
   - Derive metrics: revenue per category, customer lifetime value, mall-level footfall.  
   - Generate temporal features (year, month, weekday).  

4. **Exploratory Data Analysis (EDA)**  
   - Perform descriptive statistics.  
   - Visualize trends in demographics, sales, and payment methods.  

5. **Analytical Methods**  
   - Correlation analysis between demographics and category spend.  
   - Time-series trend analysis of yearly revenue.  
   - Segmentation of malls based on footfall and sales density.  

6. **Validation**  
   - Cross-check category-level totals against raw transactional data.  
   - Perform sanity checks using summary statistics.  

7. **Evaluation**  
   - KPIs: YOY growth, revenue per customer, payment method adoption.  
   - Benchmarked performance against peer malls.  

## Key Insights
- Female customers dominate (60%) with an average age of 43 → Targeted promotions in clothing and shoes are essential.  
- Revenue peaked in 2021–2022 but dropped sharply in 2023 → Indicates external shocks or demand shifts requiring intervention.  
- Clothing, Shoes, and Technology generate >80% of sales → Focused inventory optimization is required.  
- Mall of Istanbul and Kanyon attract the highest traffic → Proven marketing strategies here should be scaled to other malls.  
- Cash remains the most common payment method → Additional POS terminals can reduce checkout bottlenecks.  
- Cosmetics and Toys show modest sales but potential for growth → Introduce bundled promotions to boost adoption.  
- Technology products show strong resilience → Reinforce marketing with installment-based promotions.  
- Revenue per mall is unevenly distributed → Smaller malls require localized campaigns to attract footfall.  

## Dashboard
The primary deliverable is an **interactive Power BI dashboard** for real-time sales monitoring.  

- **Inputs:** Retail sales CSV files (transactions, customers, payments).  
- **Outputs:** Interactive visuals (filters by category, mall, year).  
- **Performance Targets:** Ability to update with new monthly data in <5 minutes.  

![Dashboard Screenshot](docs/screenshots/dashboard.png)

## How to Run this project?
### 1. Clone Repository
```bash
git clone https://github.com/[USERNAME]/retail-sales-analytics.git
cd retail-sales-analytics
