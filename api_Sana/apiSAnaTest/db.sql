CREATE TABLE Category (
    CategoryID INT  PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

INSERT INTO Category (CategoryID, CategoryName)
VALUES
(100, 'Household Cleaners'),
(101, 'Kitchen Cleaning'),
(102, 'Laundry Products'),
(103, 'Disinfectants'),
(104, 'Floor Cleaning'),
(105, 'Bathroom Cleaning'),
(106, 'Surface Cleaning'),
(107, 'Window Cleaning'),
(108, 'Air Fresheners'),
(109, 'Automotive Cleaning');

CREATE TABLE Product (
    ProductID INT  PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    Stock INT NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) -- FK a la tabla Category
);

-- Insert 100 products with custom ProductID starting from 1000
INSERT INTO Product (ProductID, ProductName, Price, Description, Stock, CategoryID)
VALUES
-- Household Cleaners (CategoryID: 100)
(1000, 'Multi-surface Cleaner', 5.99, 'A versatile cleaner for all surfaces.', 150, 100),
(1001, 'Floor Cleaner', 8.49, 'Cleans and shines your floors.', 120, 100),
(1002, 'Bathroom Cleaner', 6.75, 'Effective on soap scum and grime.', 90, 100),
(1003, 'Glass Cleaner', 4.99, 'Streak-free formula for windows and mirrors.', 200, 100),
(1004, 'Toilet Bowl Cleaner', 3.50, 'Deep cleaning for toilet bowls.', 85, 100),
-- Kitchen Cleaning (CategoryID: 101)
(1005, 'Dish Soap', 2.99, 'Cuts through grease with ease.', 300, 101),
(1006, 'Oven Cleaner', 7.99, 'Removes tough baked-on grease.', 65, 101),
(1007, 'Stainless Steel Polish', 10.50, 'Shines and protects stainless steel surfaces.', 45, 101),
(1008, 'Microwave Cleaner', 5.25, 'Removes food residue and odors from microwaves.', 80, 101),
(1009, 'Countertop Spray', 4.75, 'Kills germs and cleans kitchen surfaces.', 175, 101),
-- Laundry Products (CategoryID: 102)
(1010, 'Laundry Detergent', 12.99, 'Powerful stain remover.', 250, 102),
(1011, 'Fabric Softener', 6.49, 'Keeps clothes soft and fresh.', 200, 102),
(1012, 'Stain Remover', 4.99, 'Tough on stains, gentle on fabrics.', 90, 102),
(1013, 'Bleach', 3.25, 'Whitening and disinfecting agent.', 150, 102),
(1014, 'Laundry Pods', 13.99, 'Convenient laundry detergent pods.', 180, 102),
-- Disinfectants (CategoryID: 103)
(1015, 'Disinfectant Spray', 7.99, 'Kills 99.9% of germs and bacteria.', 220, 103),
(1016, 'Disinfecting Wipes', 5.99, 'Convenient disinfecting on the go.', 350, 103),
(1017, 'Multi-purpose Disinfectant', 6.49, 'For use on various surfaces.', 140, 103),
(1018, 'Hand Sanitizer', 3.75, 'Kills germs without water.', 400, 103),
(1019, 'Hospital-grade Disinfectant', 15.99, 'For high-level sanitization.', 60, 103),
-- Floor Cleaning (CategoryID: 104)
(1020, 'Wood Floor Cleaner', 9.99, 'Safe for hardwood floors.', 70, 104),
(1021, 'Carpet Shampoo', 14.50, 'Deep cleaning for carpets.', 100, 104),
(1022, 'Tile Cleaner', 8.25, 'Removes grout stains and dirt.', 130, 104),
(1023, 'Floor Wax', 11.50, 'Gives floors a polished shine.', 55, 104),
(1024, 'Laminate Floor Cleaner', 7.99, 'Safe for laminate surfaces.', 95, 104),
-- Bathroom Cleaning (CategoryID: 105)
(1025, 'Shower Cleaner', 6.75, 'Removes soap scum and hard water stains.', 110, 105),
(1026, 'Tile Grout Cleaner', 5.99, 'Cleans and whitens grout in tiles.', 120, 105),
(1027, 'Mold Remover', 8.99, 'Eliminates mold and mildew in bathrooms.', 90, 105),
(1028, 'Toilet Wipes', 4.25, 'Disposable wipes for quick cleaning.', 180, 105),
(1029, 'Tub & Tile Cleaner', 7.50, 'For a sparkling clean bathtub.', 85, 105),
-- Surface Cleaning (CategoryID: 106)
(1030, 'All-purpose Surface Cleaner', 6.99, 'Suitable for kitchen and bathroom surfaces.', 160, 106),
(1031, 'Countertop Disinfectant', 5.25, 'Kills germs on countertops.', 145, 106),
(1032, 'Furniture Polish', 9.75, 'Restores shine to wood furniture.', 75, 106),
(1033, 'Leather Cleaner', 12.99, 'Cleans and conditions leather surfaces.', 60, 106),
(1034, 'Stainless Steel Cleaner', 11.49, 'Shines and protects stainless steel surfaces.', 90, 106),
-- Window Cleaning (CategoryID: 107)
(1035, 'Glass & Window Cleaner', 4.99, 'Streak-free cleaning for windows and mirrors.', 210, 107),
(1036, 'Anti-Fog Window Spray', 6.75, 'Prevents fogging on mirrors and windows.', 85, 107),
(1037, 'Window Cleaning Wipes', 5.25, 'Pre-moistened wipes for quick window cleaning.', 170, 107),
(1038, 'Outdoor Window Cleaner', 7.50, 'Formulated for outdoor glass surfaces.', 120, 107),
(1039, 'Screen Cleaner', 4.50, 'Safe for cleaning window screens.', 95, 107),
-- Air Fresheners (CategoryID: 108)
(1040, 'Room Spray', 3.99, 'Eliminates odors and freshens the air.', 320, 108),
(1041, 'Plug-in Air Freshener', 8.99, 'Continuous air freshening for any room.', 140, 108),
(1042, 'Gel Air Freshener', 4.75, 'Long-lasting fresh scent.', 200, 108),
(1043, 'Car Air Freshener', 3.25, 'Eliminates odors and freshens your car.', 310, 108),
(1044, 'Scented Candles', 12.50, 'Creates a relaxing atmosphere with pleasant aromas.', 180, 108),
-- Automotive Cleaning (CategoryID: 109)
(1045, 'Car Wax', 14.99, 'Protects and shines your car exterior.', 90, 109),
(1046, 'Interior Car Cleaner', 9.99, 'Cleans dashboard and upholstery.', 110, 109),
(1047, 'Tire Shine', 8.75, 'Shines and protects your tires.', 70, 109),
(1048, 'Windshield Washer Fluid', 5.50, 'For a streak-free windshield.', 200, 109),
(1049, 'Engine Degreaser', 11.99, 'Removes grease and grime from engines.', 45, 109),
-- Additional Products to Complete the List
(1050, 'Heavy Duty Cleaner', 9.99, 'Tough on grease and dirt.', 150, 100),
(1051, 'Pet Stain Remover', 6.99, 'Removes pet stains and odors.', 80, 100),
(1052, 'Dusting Spray', 4.49, 'For dust-free surfaces.', 130, 100),
(1053, 'Garbage Disposal Cleaner', 7.25, 'Deodorizes and cleans garbage disposals.', 70, 101),
(1054, 'Kitchen Degreaser', 5.99, 'Removes grease from kitchen surfaces.', 140, 101),
(1055, 'Dryer Sheets', 4.25, 'Softens fabrics and reduces static cling.', 250, 102),
(1056, 'Fabric Starch', 3.99, 'For crisp, wrinkle-free clothes.', 100, 102),
(1057, 'Hospital-grade Surface Cleaner', 12.99, 'Strong disinfectant for medical use.', 55, 103),
(1058, 'Antiviral Disinfectant', 9.50, 'Effective against viruses.', 130, 103),
(1059, 'Mop & Shine Solution', 7.75, 'Cleans and shines floors in one step.', 60, 104),
(1060, 'Tile Scrubber', 8.50, 'Heavy-duty cleaner for tile floors.', 75, 104),
(1061, 'Sink & Drain Cleaner', 6.50, 'Unclogs drains and cleans sinks.', 110, 105),
(1062, 'Lime and Rust Remover', 5.99, 'Eliminates limescale and rust.', 90, 105),
(1063, 'Allergy-friendly Dusting Spray', 8.99, 'Hypoallergenic dusting formula.', 65, 106),
(1064, 'Stone Surface Cleaner', 11.25, 'Safe for marble and granite surfaces.', 40, 106),
(1065, 'Window Foam Cleaner', 5.50, 'Foaming formula for extra cleaning power.', 105, 107),
(1066, 'Essential Oil Diffuser', 17.99, 'Aromatherapy for your home.', 80, 108),
(1067, 'Wheel Cleaner', 13.25, 'Removes brake dust and grime from wheels.', 50, 109);


CREATE TABLE ProductCategory (
    ProductID INT,
    CategoryID INT,
    PRIMARY KEY (ProductID, CategoryID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Insert data into the ProductCategory join table
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES
-- Household Cleaners (CategoryID: 100)
(1000, 100),
(1001, 100),
(1002, 100),
(1003, 100),
(1004, 100),
-- Kitchen Cleaning (CategoryID: 101)
(1005, 101),
(1006, 101),
(1007, 101),
(1008, 101),
(1009, 101),
-- Laundry Products (CategoryID: 102)
(1010, 102),
(1011, 102),
(1012, 102),
(1013, 102),
(1014, 102),
-- Disinfectants (CategoryID: 103)
(1015, 103),
(1016, 103),
(1017, 103),
(1018, 103),
(1019, 103),
-- Floor Cleaning (CategoryID: 104)
(1020, 104),
(1021, 104),
(1022, 104),
(1023, 104),
(1024, 104),
-- Bathroom Cleaning (CategoryID: 105)
(1025, 105),
(1026, 105),
(1027, 105),
(1028, 105),
(1029, 105),
-- Surface Cleaning (CategoryID: 106)
(1030, 106),
(1031, 106),
(1032, 106),
(1033, 106),
(1034, 106),
-- Window Cleaning (CategoryID: 107)
(1035, 107),
(1036, 107),
(1037, 107),
(1038, 107),
(1039, 107),
-- Air Fresheners (CategoryID: 108)
(1040, 108),
(1041, 108),
(1042, 108),
(1043, 108),
(1044, 108),
-- Automotive Cleaning (CategoryID: 109)
(1045, 109),
(1046, 109),
(1047, 109),
(1048, 109),
(1049, 109),
-- Additional Products to Complete the List
(1050, 100),
(1051, 100),
(1052, 100),
(1053, 101),
(1054, 101),
(1055, 102),
(1056, 102),
(1057, 103),
(1058, 103),
(1059, 104),
(1060, 104),
(1061, 105),
(1062, 105),
(1063, 106),
(1064, 106),
(1065, 107),
(1066, 108),
(1067, 109);



CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE [Order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


CREATE TABLE OrderProduct (
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


CREATE TYPE OrderProductType AS TABLE
(
    ProductID INT,
    Quantity INT
);


CREATE PROCEDURE AddOrderAndProducts
    @CustomerID INT,
    @TotalAmount DECIMAL(10, 2),
    @Products OrderProductType READONLY 
AS
BEGIN
   
    BEGIN TRANSACTION;

    
    INSERT INTO [Order] (CustomerID, OrderDate, TotalAmount)
    VALUES (@CustomerID, GETDATE(), @TotalAmount);

   
    DECLARE @OrderID INT;
    SET @OrderID = SCOPE_IDENTITY();

    
    INSERT INTO OrderProduct (OrderID, ProductID, Quantity)
    SELECT @OrderID, ProductID, Quantity
    FROM @Products;

    
    COMMIT TRANSACTION;
END;