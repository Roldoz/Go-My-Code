CREATE TABLE Customer (
      Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
      Customer_Name VARCHAR2(20) CONSTRAINT n_customer NOT NULL,
      Customer_Tel NUMBER
);

CREATE TABLE Product (
      Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
      Product_Name VARCHAR2(20) CONSTRAINT n_product NOT NULL,
      Price NUMBER CONSTRAINT pr_product CHECK( Price > 0 )
);

CRETE TABLE Orders (
      Quantity NUMBER,
      Total_amount NUMBER,
      CONSTRAINT f_customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
      CONSTRAINT f_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

ALTER TABLE Product ADD Catergory VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE; 
