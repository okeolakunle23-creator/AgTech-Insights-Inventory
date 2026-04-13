# 📦 AgTech Insights: Cashew Inventory & Audit

## 🎯 Project Objective
To accurately estimate the quantity and financial value of high-volume cashew stacks where manual counting is not feasible. This project bridges the gap between physical warehouse operations and digital financial reporting.

## 🛠 Skills Showcased
* **SQL (PostgreSQL):** CTEs, Joins, and Subqueries.
* **Operational Analysis:** Inventory valuation and data integrity auditing.

## 📈 Impact
* Developed a layer-stacking logic to estimate bag counts for large warehouse zones.
* Automated the valuation process using real-time market pricing tables.
* Created a framework to identify discrepancies between physical ledgers and digital records.

---

### 📊 QC Analysis: Sample Output Table
*This table shows the final result of the `cashew_quality_qc_analysis.sql` script.*

| Batch ID | KOR Score | Moisture % | Quality Classification | Operational Flag |
| :--- | :--- | :--- | :--- | :--- |
| B-9021 | 52 | 8.5 | **Premium Export** | Clear |
| B-9022 | 47 | 11.2 | Standard Processing | Clear |
| B-9023 | 44 | 15.1 | High Risk - Drying Required | **ACTION REQUIRED** |
| B-9024 | 40 | 12.0 | Reject / Substandard | Clear |

---
