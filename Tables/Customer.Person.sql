CREATE TABLE [Customer].[Person]
(
[person_ID] [int] NOT NULL IDENTITY(1, 1),
[Title] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MiddleName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Suffix] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Person__Modified__5812160E] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Person] ADD CONSTRAINT [PK__Person__543B4487B567C66A] PRIMARY KEY CLUSTERED  ([person_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'People involved with the Widget Manufacturing Co.', 'SCHEMA', N'Customer', 'TABLE', N'Person', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'First name of the person.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'FirstName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last name of the person.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'LastName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Middle name or middle initial of the person.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'MiddleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Person records.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'person_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Surname suffix. For example, Sr. or Jr.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'Suffix'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A courtesy title. For example, Mr. or Ms.', 'SCHEMA', N'Customer', 'TABLE', N'Person', 'COLUMN', N'Title'
GO
