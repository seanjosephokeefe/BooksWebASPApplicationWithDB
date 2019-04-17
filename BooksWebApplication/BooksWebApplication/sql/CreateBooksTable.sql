CREATE TABLE [dbo].[Books]
(
	BookID int IDENTITY(1,1) PRIMARY KEY,
	Title varchar(100) NOT NULL,
	PublishDate varchar(10),
	Price Decimal(5,2),
	SaleDate varchar(10),
	Category varchar(20)
)