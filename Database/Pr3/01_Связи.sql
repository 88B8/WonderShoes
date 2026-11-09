-- ПР3. Выполнять в базе, подготовленной в ПР2.
USE [kamenskiy_wondershoes];
GO
SET XACT_ABORT ON;
BEGIN TRANSACTION;
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name=N'FK_OrderProduct_Product')
 ALTER TABLE dbo.OrderProduct WITH CHECK ADD CONSTRAINT FK_OrderProduct_Product
 FOREIGN KEY (ProductId) REFERENCES dbo.Product(IdProduct);
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name=N'FK_OrderProduct_Order')
 ALTER TABLE dbo.OrderProduct WITH CHECK ADD CONSTRAINT FK_OrderProduct_Order
 FOREIGN KEY (OrderId) REFERENCES dbo.[Order](IdOrder) ON DELETE CASCADE;
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name=N'FK_Product_Manufacturer')
 ALTER TABLE dbo.Product WITH CHECK ADD CONSTRAINT FK_Product_Manufacturer
 FOREIGN KEY (ManufacturerId) REFERENCES dbo.Manufacturer(IdManufacturer);
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name=N'FK_Order_User')
 ALTER TABLE dbo.[Order] WITH CHECK ADD CONSTRAINT FK_Order_User
 FOREIGN KEY (UserId) REFERENCES dbo.[User](IdUser);
IF NOT EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name=N'FK_ProductSize_Product')
 ALTER TABLE dbo.ProductSize WITH CHECK ADD CONSTRAINT FK_ProductSize_Product
 FOREIGN KEY (ProductId) REFERENCES dbo.Product(IdProduct);
COMMIT;
GO
