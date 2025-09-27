# plsql-sales-project
“Database project with customers, products, and transactions using SQL &amp; ERD”
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
 
 3. Queries Summary
All SQL queries are in the `sql/` folder:
| Step | File | Description |
|------|------|-------------|
| A | ranking_queries.sql | Top 5 customers by revenue | 
| B | aggregate_queries.sql | Running monthly sales totals | 
| C | navigation_queries.sql | Month-over-month growth | 
| D | distribution_queries.sql | Customer quartiles | 
| E | moving_avg_queries.sql | 3-month moving average | 
| F | extra_queries.sql | PERCENT_RANK & CUME_DIST |

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
1.	MySQL Documentation  Window Functions, 
2.	Oracle PL/SQL Documentation  .
3.	SQL Server Window Functions Guide  .
4.	Database Journal – Analytical Queries  .
5.	W3Schools SQL Tutorial  .

