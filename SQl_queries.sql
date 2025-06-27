1) Customer Table-

  CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(100)
);

2) Product Table-

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

3) Store Table-

CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    Region VARCHAR(50)
);

4) Dates Table-

CREATE TABLE Dates (
    Date DATE PRIMARY KEY,
    Year INT,
    Month INT,
    MonthName VARCHAR(20),
    Quarter INT
);

5) Sales Table-

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    SaleDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

SQL QUERY TASKS :-

1) Top-Selling Products by Region:

SELECT s.Region, p.Category, p.ProductName, SUM(sa.Quantity) AS TotalSold
FROM Sales sa
JOIN Products p ON sa.ProductID = p.ProductID
JOIN Stores s ON sa.StoreID = s.StoreID
GROUP BY s.Region, p.Category, p.ProductName
ORDER BY s.Region, TotalSold DESC;

2) Monthly Revenue Trend:
SELECT d.Year, d.MonthName, SUM(p.Price * sa.Quantity) AS MonthlyRevenue
FROM Sales sa
JOIN Products p ON sa.ProductID = p.ProductID
JOIN Dates d ON sa.SaleDate = d.Date
GROUP BY d.Year, d.MonthName
ORDER BY d.Year, d.Month;

3) Customer Demographics Summary:

SELECT Gender, COUNT(*) AS CustomerCount, AVG(Age) AS AvgAge
FROM Customers
GROUP BY Gender;

4) Store Performance by Revenue:

SELECT st.StoreName, st.Region, SUM(p.Price * sa.Quantity) AS StoreRevenue
FROM Sales sa
JOIN Products p ON sa.ProductID = p.ProductID
JOIN Stores st ON sa.StoreID = st.StoreID
GROUP BY st.StoreName, st.Region
ORDER BY StoreRevenue DESC;
