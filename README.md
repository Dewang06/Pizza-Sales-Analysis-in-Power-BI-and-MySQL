
# Pizza-Sales-Analysis-in-Power-BI-and-MySQL

### Dashboard Link : https://github.com/Dewang06/Pizza-Sales-Analysis-in-Power-BI-and-MySQL/blob/main/pizza_sales_analysis.pdf

## Problem Statement

The pizza store needs to understand its sales patterns to make informed business decisions. By identifying peak sales times, popular pizza sizes, and the best and worst performing pizzas, the store can optimize its operations, improve marketing strategies, and increase overall sales.

- ***Identifying Peak Sales Periods:*** The store needs to know the best days and months for sales to optimize staffing and inventory levels.
- ***Understanding Product Performance:*** It's crucial to determine which pizza sizes and categories are most popular to streamline the menu and focus marketing efforts.
- ***Evaluating Product Success:*** The store needs to identify the best and worst performing pizzas by revenue, quantity ordered, and number of orders placed. This will help in menu optimization and promotional strategies. 

Without these insights, the store risks overstocking or understocking ingredients, misallocating marketing budgets, and missing opportunities to maximize revenue. This project aims to provide actionable insights to address these challenges.


### Steps followed 

- Step 1 : Imported the food_sales.csv file into MySQL WOrkbench
- Step 2 : Performed analysis in MySQL by writing questions and their corresponding queries to extract meaningful insights from the sales data.
- Step 3 : Imported the food_sales.csv file into Power BI desktop for visualization.
- Step 4: The following measures are created:
  - **Total_Sales** = `SUM(food_sales[total_price])`
  - **TotalPizzaSold** = `SUM(food_sales[quantity])`
  - **AvgOrderValue** = `[Total_Sales] / [Total_Orders]`
  - **Total_Orders** = `DISTINCTCOUNT(food_sales[order_id])`
  - **AvgPizzaPerOrder** = `[TotalPizzaSold] / [Total_Orders]`
        
        Analyzing Total Sales, Total Orders, and AvgOrderValue
        shows customer spending per order, aiding in pricing
        and promotions. Examining TotalPizzaSold
        and AvgPizzaPerOrder helps manage inventory and
        meet customer preferences.

- Step 5: The following card visuals were used to represent the above-mentioned measures.
![cards](https://github.com/Dewang06/Inventory-store-analysis/assets/91787570/fe4d738f-44f4-4b6c-95f0-c1ecf7f94f70)
- Step 6: Created columns for days and months, including day and month numbers, to sort and analyze sales data effectively.
- Step 7 : Stacked column chart was added to Visualize sales by days in a week.
- Step 8 : Area chart was added to Visualize sales by months.
- Step 9 : Donut charts were added to Visualize sales by pizza category and size.
- Step 10 : The report was then published to Power BI Service.

 # Report Snapshot (Power BI DESKTOP)

 
![home_page_dashboard](https://github.com/Dewang06/Inventory-store-analysis/assets/91787570/6403c01e-7025-4355-a402-864042eb4775)

![best worst](https://github.com/Dewang06/Inventory-store-analysis/assets/91787570/2b1f51f5-ff2a-4d1d-8f31-def749920ceb)

# Insights

Double page report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

### [2] Sales Performance Metrics

- **Total Sales** = `817.86k`
- **Total Pizzas Sold** = `49574`
- **Average Order Value** = `$38.31`
- **Total Orders placed** = `21350`
- **Average Pizza Per Order** = `2.32`
           
### [2] Key sales highlights

        a) By day - Friday
        b) By month - July
        c) By Category - Classic
        d) By Size - Large
  
  ### [3] Best performing pizzas
  
        a) By sales - The Thai Chicken Pizza
        b) By quantity - The Classic Delux Pizza
        c) By order - The Thai Chicken Pizza

 ### [4] Worst performing pizzas

        a) By sales - The Spanish Pesto Pizza
        b) By quantity - The Soppressata Pizza
        c) By order - The Chicken Pesto Pizza
 
 ### [5] Sales Analysis Highlights
 
1.) Determined Friday as the peak day with 17% of weekly revenue; July also peaked at 20% of total sales.
 
2.) Evaluated pizza size performance, revealing that large pizzas accounted for 46% of total sales.
 
3.) Pinpointed the top 5 pizzas by revenue, quantity, and number of orders, highlighting the most popular items.

4.) Foundthe bottom 5 pizzas contributed one-third of the revenue compared to the top performers.
## Tools and Technologies Used

**MySQL:** It is an open-source relational database management system (RDBMS) that allows users to store, organize, and manage structured data. It is widely used in data-driven projects for its reliability and performance.

**Power BI Desktop:** It is a Microsoft tool for creating interactive data visualizations and reports, connecting to different data sources, and sharing insights.

**Power BI Service:** It is a cloud-based platform by Microsoft for publishing, sharing, and collaborating on Power BI reports and dashboards across organizations.