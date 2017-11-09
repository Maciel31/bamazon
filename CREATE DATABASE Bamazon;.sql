CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE Products(
	ItemID INTEGER(10) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10) NOT NULL,
    StockQuantity INTEGER(10),
    primary key (ItemId)
);
/*syntax for creating new product*/
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('shoes','shoes department',40,30);

/*made mistake in usage of DECIMAL, delete old and create new correct column*/
ALTER TABLE Products DROP COLUMN Price;
ALTER TABLE Products ADD COLUMN Price DECIMAL(10,2) NOT NULL;

/*Create new row to ensure database has data*/
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('tire','automobile department',80,10);

/* More options */

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('silverware','kitchen utensils',30,20);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('iphone','eletronics',250,15);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('laptop','eletronics',350,18);

/* Name everything in plural form */
UPDATE Products SET ProductName = "tire" WHERE ProductName = "tire";

/* Add price to chocolate chip cookies. Wiped it out earlier with decimal redeclaration. */
UPDATE Products SET Price = 40 WHERE ProductName = "shoes";