# 📊 Customer Churn Analysis – SQL EDA Project

## 📌 Project Overview
This project focuses on **Exploratory Data Analysis (EDA)** of a business customer dataset using **SQL (MySQL)**.  
The objective is to understand **customer demographics, churn behavior, income patterns, spending behavior, and regional distribution** to extract actionable business insights.

All analysis has been performed **purely using SQL queries**, without using any external BI or visualization tools, to demonstrate strong data querying and analytical skills.

---

## 🗂 Dataset Description
The dataset contains customer-level information such as:
- Age  
- Gender  
- Region  
- Subscription Type  
- Annual Income  
- Spending Score  
- Churn Status  

---

## 🔍 Exploratory Data Analysis (EDA)

### 1️⃣ Data Inspection & Validation
- Verified column data types using `DESCRIBE`
- Checked for unrealistic values (e.g., Age < 0 or Age > 100)
- Ensured categorical fields like `Gender` and `Churn` were consistent

---

### 2️⃣ Customer Demographics
**Gender-wise distribution**
- Calculated total customers by gender to understand customer composition

---

### 3️⃣ Customer Churn Analysis
**Key questions answered:**
- How many customers churned?
- What is the overall churn rate?
- How many customers are retained vs churned?

**Analysis performed:**
- Counted churned and non-churned customers
- Calculated churn percentage of total customers

---

### 4️⃣ Region & Subscription Analysis
- Customer distribution across regions
- Customer count by subscription type
- Region-wise customer concentration (descending order)

---

### 5️⃣ Income Analysis
**Income by Gender**
- Calculated:
  - Maximum income
  - Minimum income
  - Average income  
- Grouped by gender

---

### 6️⃣ Spending Behavior Analysis
**Spending Score by Subscription Type**
- Total customers
- Average spending score
- Maximum and minimum spending score

---

### 7️⃣ Churn by Region
- Calculated region-wise churn percentage
- Used conditional aggregation to identify high-churn regions

**Insight:**  
Some regions show significantly higher churn rates, indicating potential service, pricing, or engagement issues.

---

### 8️⃣ Income Level vs Churn
Customers were segmented into:
- Low Income (< 40,000)
- Middle Income (40,000 – 80,000)
- High Income (> 80,000)

**Analysis performed:**
- Churn count by income category
- Percentage churn within each income group

**Insight:**  
Lower income segments show higher churn probability compared to higher income customers.

---

### 9️⃣ Spending Score vs Churn
Spending categories:
- Low Spending (0–30)
- Medium Spending (30–60)
- High Spending (>60)
- Unknown (NULL values)

**Analysis performed:**
- Churn count across spending categories

---

### 🔟 High-Value Customer Churn
Identified **high-value churners** defined as:
- Annual Income > 80,000
- Spending Score > 60
- Churn = Yes

This helps quantify **loss of premium customers**.

---

## 🧠 Key Insights
- Churn is influenced by **region, income level, and spending behavior**
- Lower income and lower spending customers churn more frequently
- Certain regions show disproportionately high churn
- High-value customer churn exists and needs targeted retention strategies

---

## 🛠 Tools & Technologies
- **MySQL**
- SQL Aggregations
- Window Functions
- CASE Statements
- Conditional Aggregation

---

## 📌 Conclusion
This EDA project demonstrates the ability to:
- Perform structured analysis using SQL
- Translate business questions into queries
- Extract meaningful insights from raw data
- Prepare data for further visualization or predictive modeling

---
## Related Repositories

- 🔍 SQL Data Cleaning Project  :
  https://github.com/ravi-the-analyst/sql-data-cleaning-project

---

## 📬 Feedback
Suggestions and feedback are always welcome.  
This project is part of my journey toward becoming a data analyst.

* If you see something in this project, please tell me i would love to take a feedback it will help me to improve.



⭐ If you found this project helpful, feel free to star the repository!
