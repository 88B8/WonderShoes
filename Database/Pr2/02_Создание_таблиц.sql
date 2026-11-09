-- Практическая работа 2. Шесть таблиц и первичные ключи.

USE [kamenskiy_wondershoes];

GO

SET XACT_ABORT ON;

BEGIN TRANSACTION;

CREATE TABLE [dbo].[User] (
    [IdUser] int IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(50) NULL,
    [FirstName] nvarchar(50) NULL,
    [PatronymicName] nvarchar(50) NULL,
    [Username] nvarchar(50) NULL,
    [Role] nvarchar(50) NULL,
    CONSTRAINT [PK_User] PRIMARY KEY ([IdUser])
);

CREATE TABLE [dbo].[Manufacturer] (
    [IdManufacturer] int IDENTITY(1,1) NOT NULL,
    [ManufacturerName] nvarchar(150) NULL,
    CONSTRAINT [PK_Manufacturer] PRIMARY KEY ([IdManufacturer])
);

CREATE TABLE [dbo].[Product] (
    [IdProduct] int IDENTITY(1,1) NOT NULL,
    [Category] nvarchar(50) NULL,
    [Subcategory] nvarchar(50) NULL,
    [Photo] nvarchar(50) NULL,
    [ProductName] nvarchar(150) NULL,
    [ManufacturerId] int NULL,
    [Description] nvarchar(max) NULL,
    [Сomposition] nvarchar(max) NULL,
    [ProductPrice] decimal(18,2) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY ([IdProduct])
);

CREATE TABLE [dbo].[ProductSize] (
    [IdProductSize] int IDENTITY(1,1) NOT NULL,
    [ProductId] int NULL,
    [Size] float NULL,
    [Stock] int NULL,
    [InitialStock] int NULL,
    CONSTRAINT [PK_ProductSize] PRIMARY KEY ([IdProductSize])
);

CREATE TABLE [dbo].[Order] (
    [IdOrder] int IDENTITY(1,1) NOT NULL,
    [Date] date NULL,
    [UserId] int NULL,
    [Status] nvarchar(50) NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY ([IdOrder])
);

CREATE TABLE [dbo].[OrderProduct] (
    [IdOrderProduct] int IDENTITY(1,1) NOT NULL,
    [OrderId] int NULL,
    [ProductId] int NULL,
    [Size] float NULL,
    [Amount] int NULL,
    [OrderProductPrice] decimal(18,2) NULL,
    CONSTRAINT [PK_OrderProduct] PRIMARY KEY ([IdOrderProduct])
);

COMMIT TRANSACTION;

GO
