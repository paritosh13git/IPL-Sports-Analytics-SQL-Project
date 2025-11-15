
# 🏏 IPL Sports Analytics SQL Project
A complete SQL-based analytics project using IPL ball-by-ball and match-level data (2008–2020).  
Includes PostgreSQL scripts, cleaned data processing, analytical queries, and Power BI dashboard plan.

---

# 📌 Project Overview

This project analyzes IPL cricket data using SQL.  
You work as a *Sports Data Analyst* exploring insights from:

- **816 Match records**
- **193,468 Ball-by-ball records**

Key tasks include:
- Data cleaning & schema creation  
- Advanced SQL (JOIN, CASE, AGGREGATIONS, WINDOW functions)  
- Venue analysis  
- Team performance  
- Boundary & wickets analysis  
- Ball ID tracking using ROW_NUMBER  
- Power BI dashboard design

---

# 📂 Folder Guide

## ✔ `/data/`
Place your two CSV files here:
- `IPL_matches.csv`
- `IPL_Ball.csv`

These are not included here due to size — upload your own.

---

# ✔ `/sql/`
Contains all SQL scripts for PostgreSQL:

| Script | Description |
|--------|-------------|
| `01_create_tables.sql` | Create matches & deliveries tables |
| `02_import_data.sql` | Safe import using RAW tables |
| `03_basic_queries.sql` | First 10 assignment queries |
| `04_deliveries_v02.sql` | Add ball_result column |
| `05_deliveries_v03.sql` | Join with matches (venue, date) |
| `06_deliveries_v04.sql` | Create ball_id |
| `07_deliveries_v05.sql` | Row-number analysis |
| `08_analysis_queries.sql` | All final analytical queries |

---

# ✔ `/powerbi/`
Contains:

- Power BI model schema  
- DAX measures  
- Dashboard page-by-page guide  

Make sure to load CSVs and apply relationships as defined.

---

# 🧠 Skills Demonstrated

- PostgreSQL data modeling  
- Data cleaning using `NULLIF()`, CASE, joins  
- Analytical SQL  
- Window functions (ROW_NUMBER)  
- Power BI dashboard creation  
- Sports analytics domain knowledge  

---

# 🚀 How to Use

### Step 1 — Create tables using:
```
sql/01_create_tables.sql
```

### Step 2 — Import datasets using:
```
sql/02_import_data.sql
```

### Step 3 — Run queries in order from:
```
sql/03_basic_queries.sql → sql/08_analysis_queries.sql
```

### Step 4 — Build Power BI report using:
```
powerbi/ files
```

---

# 👨‍💻 Author  
Paritosh Sharma  
(SQL & Power BI Data Analyst)

---

# ⭐ If you like this project, give it a star on GitHub!
