Hirwa Roy 24174 - Group A         
PL/SQL Window Functions Assignment – Hirwa Roy

1. Business Problem
The company wants to analyze customer spending patterns and identify top customers for VIP marketing. 
We rank customers by revenue, calculate running totals, assess month over month growth, segment customers into quartiles, and evaluate trends using moving averages.

2. Database Schema
Our database has three tables:
Customers table 1	
- customer_id (PK)  
- customer_name  
- region  
Products table 2
- product_id (PK)  
- name  
- category  
- price  
Transactions table 3
- transaction_id (PK)  
- customer_id (FK)  
- product_id (FK)  
- sale_date  - quantity  - amount  
ER Diagram
 <img width="873" height="711" alt="image" src="https://github.com/user-attachments/assets/8cbca17a-3e1c-4aa4-a633-33cc806c61f4" />

 3. Queries Summary
All SQL queries are in the `sql/` folder:
| Step | File | Description |
|------|------|-------------|
| A | ranking_queries.sql | Top 5 customers by revenue | 
<img width="457" height="181" alt="01_ranking" src="https://github.com/user-attachments/assets/ef676c73-2e5c-4c38-a25f-3385f5db5c6f" />
| B | aggregate_queries.sql | Running monthly sales totals | 
<img width="349" height="166" alt="02_running_totals" src="https://github.com/user-attachments/assets/6cb34cb6-66d8-4b03-8b7a-ed4119ee2dc8" />

| C | navigation_queries.sql | Month-over-month growth | 
<img width="970" height="242" alt="3table customer" src="https://github.com/user-attachments/assets/aa330ac5-6394-45d1-80b8-4948df6f465f" />

| D | distribution_queries.sql | Customer quartiles | 
<img width="428" height="205" alt="04_quartiles" src="https://github.com/user-attachments/assets/f7bab14b-99dc-4bed-8530-57d8af487db5" />

| E | moving_avg_queries.sql | 3-month moving average | 
<img width="388" height="177" alt="05_moving_avg" src="https://github.com/user-attachments/assets/ee790817-be05-43bf-886c-a5ed4e131dfe" />

| F | extra_queries.sql | PERCENT_RANK & CUME_DIST |
<img width="581" height="183" alt="06_percent and cumulative" src="https://github.com/user-attachments/assets/9b06c71f-d9ce-48b5-89e6-f5c1b4168ecf" />


4. Key Findings
•	The top 25% of customers generate more than 60% of revenue.  
•	Monthly revenue trends show peak sales in February and March.  
•	Some months have negative growth, highlighting areas for marketing focus.  
•	Moving averages smooth volatility and reveal long-term revenue trends.

5. Results Analysis
•	Descriptive: Patterns show top customers concentrate revenue; monthly totals fluctuate.  
•	Diagnostic: Peaks in Feb/Mar correspond to promotions; dips relate to fewer transactions.  
•	Prescriptive:  Focus loyalty programs on top quartile; plan inventory based on 3month moving average; investigate low-performing months for improvement.

 6. References
	MySQL Documentation  Window Functions, 
	Oracle PL/SQL Documentation  .
	SQL Server Window Functions Guide  .
	Database Journal – Analytical Queries  .
	W3Schools SQL Tutorial  .
