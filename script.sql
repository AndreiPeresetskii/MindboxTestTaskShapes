CREATE TABLE Products (
    Id INT IDENTITY(1,1) PRIMARY KEY,  
    Name VARCHAR(30) NOT NULL
);

CREATE TABLE Categories (
    Id INT IDENTITY(1,1) PRIMARY KEY,  
    Name VARCHAR(30) NOT NULL
);

CREATE TABLE ProductCategory (
    ProductId INT,
    CategoryId INT,
    PRIMARY KEY (ProductId, CategoryId),
    FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE CASCADE,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id) ON DELETE CASCADE
);

INSERT INTO Categories (Name) VALUES ('Electronics'); -- 1
INSERT INTO Categories (Name) VALUES ('Clothing'); -- 2
INSERT INTO Categories (Name) VALUES ('Books'); -- 3
INSERT INTO Categories (Name) VALUES ('Home'); -- 4
INSERT INTO Categories (Name) VALUES ('Medicine'); -- 5
INSERT INTO Categories (Name) VALUES ('Food products'); -- 6

INSERT INTO Products (Name) VALUES ('Smartphone'); -- 1
INSERT INTO Products (Name) VALUES ('Laptop'); -- 2
INSERT INTO Products (Name) VALUES ('Shirt'); -- 3
INSERT INTO Products (Name) VALUES ('Phone book'); -- 4
INSERT INTO Products (Name) VALUES ('Apples'); -- 5
INSERT INTO Products (Name) VALUES ('Welding equipment'); -- 6

INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (1, 1); 
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (2, 1); 
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (3, 2); 
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (4, 3); 
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (4, 4); 
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (5, 6); 

SELECT p.Name AS Product, c.Name Category FROM Products p LEFT JOIN ProductCategory pc ON p.Id = pc.ProductId LEFT JOIN Categories c ON pc.CategoryId = c.Id; -- SQL запрос для выбора всех пар «Имя продукта – Имя категории».
GO