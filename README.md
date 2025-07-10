# 📊 CloudSync Product Analyst Assignment

## 🧠 Overview
This project analyzes customer churn behavior for **CloudSync**, a B2B SaaS collaboration platform. The analysis leverages SQL, Python, and Machine Learning to deliver insights and recommendations that can reduce churn and improve customer retention.

---

## 📂 File Structure

| File Name                         | Description                                                  |
|----------------------------------|--------------------------------------------------------------|
| `task1_data_quality_mysql.sql`   | SQL queries for detecting missing values, outliers, and inconsistencies |
| `task2_sql_analysis_mysql.sql`   | SQL queries for churn analysis by cohort, contract type, and features |
| `task3_python_analysis.ipynb`    | Jupyter Notebook for data cleaning, EDA, and churn prediction |
| `executive_summary.docx`         | Strategic recommendations and implementation roadmap         |
| `README.md`                      | This documentation file                                      |

---

## 🛠️ Tools & Technologies

- **SQL** (MySQL)
- **Python 3.8+**
  - pandas, seaborn, matplotlib
  - scikit-learn
- **Jupyter Notebook**
- **MS Word / Google Docs** (for summary)

---

## 🔍 Key Assumptions

- Missing `TotalCharges` were imputed using `MonthlyCharges × Tenure`
- Categorical variables were encoded using `LabelEncoder`
- Model performance was evaluated using ROC-AUC Score and Classification Report

---

## ⚙️ How to Run the Project

1. Place the dataset (`WA_Fn-UseC_-Telco-Customer-Churn.csv`) in the same directory as the notebook.
2. Open `task3_python_analysis.ipynb` using Jupyter Notebook.
3. Run all cells sequentially to explore data insights and predictive results.
4. Open `.sql` files in MySQL Workbench or compatible client to run SQL analyses.

---

## 🚧 Challenges Addressed

- Cleaned and validated inconsistent billing data
- Designed interpretable churn models with explainable features
- Translated technical insights into stakeholder-ready business actions

---

## 📬 Contact

*Prepared by*: [Your Name]  
*Role*: Data/Product Analyst  
*Date*: [Submission Date]  
