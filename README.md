🛒 **Retail Sales Performance Dashboard**

 An interactive Power BI dashboard to analyze and visualize retail sales data across stores, products, and customers. This project demonstrates end-to-end data analytics using SQL and Power BI with a clean data model and DAX measures.


🎯 **Project Objective**

 .Build a data-driven dashboard to:

 .Track total sales revenue, quantity, and order value

 .Analyze sales trends over time

 .Compare store performance by region

 .Identify top-selling products and customer segments


 📦 **Dataset Overview**

 - The project uses five CSV files as the data source:

   File	              Description
Customers.csv	       Customer demographic data
Products.csv	       Product catalog with category & price
Stores.csv	         Retail store information by region
Sales.csv	           Sales transactions
Dates.csv	           Calendar dimension for time analysis



🛠️ **Tools & Technologies**

  - Power BI Desktop

  - SQL (for ETL/analysis)

  - DAX (Data Analysis Expressions)

  - CSV/Flat file data model



📊 **Power BI Dashboard Features**

   .Total Revenue, Total Orders, AOV KPIs

   .Top 10 selling products by revenue

   .Monthly revenue trend chart

   .Revenue by region (map)

   .Category-wise product performance

   .Filters for year, category, region, store


📁 **Folder Structure**

├── data/

│ ├── Customers.csv

│ ├── Products.csv

│ ├── Stores.csv

│ ├── Sales.csv

│ └── Dates.csv

├── Retail_Sales_Dashboard.pbix

└── README.md

 **Relationships **
 
![image alt](https://github.com/Tanvijirafe/Sales-_Distribution/blob/a830f3ebb00b093d67ec462ea5197a30ca31fbb3/Reletionships%20T.png)


🧮 **Key DAX Measures** 

- Total Revenue:

- Total Revenue = SUMX(Sales, Sales[Quantity] * RELATED(Products[Price]))

- Total Quantity:

- Total Quantity = SUM(Sales[Quantity])

- Average Order Value:

- Average Order Value = DIVIDE([Total Revenue], [Total Quantity])



🔧  **How to Use**

   .Download or clone the repository

  .Open Retail_Sales_Dashboard.pbix in Power BI Desktop

  .Replace data source paths if needed

  .Explore the visuals and customize them as desired


📷 **Dashboard Preview**


![image alt](https://github.com/Tanvijirafe/Sales-_Distribution/blob/f4c29897ef7deebc8becdeb7a2fd0b64cfec62f6/Dashboard.png)

🙌 **Acknowledgments**

  Thanks to the Power BI community and Microsoft Learn for resources and tutorials.

