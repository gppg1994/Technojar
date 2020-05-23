CREATE TABLE [dbo].[Table]
(
	[Id] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [VendorName] VARCHAR(50) NOT NULL, 
    [VendorLogo] VARCHAR(50) NULL, 
    [OfferImage] VARCHAR(50) NULL, 
    [OfferLink] VARCHAR(500) NOT NULL, 
    [VendorSubtitle] VARCHAR(100) NULL
)
