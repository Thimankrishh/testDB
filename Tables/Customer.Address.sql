CREATE TABLE [Customer].[Address]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1),
[AddressLine1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressLine2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[County] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostCode] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Address__Modifie__5AEE82B9] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Address] ADD CONSTRAINT [PK__Address__091C2A1B791BD832] PRIMARY KEY CLUSTERED  ([AddressID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Street address information for Customers, employees, and vendors.', 'SCHEMA', N'Customer', 'TABLE', N'Address', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Address records.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'AddressID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First street address line.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Second street address line.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the city.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal code for the street address.', 'SCHEMA', N'Customer', 'TABLE', N'Address', 'COLUMN', N'PostCode'
GO
