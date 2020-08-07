CREATE TABLE [Customer].[Phone]
(
[Phone_ID] [int] NOT NULL IDENTITY(1, 1),
[Person_id] [int] NULL,
[TypeOfPhone] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiallingNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Start_date] [datetime] NULL,
[End_date] [datetime] NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF__Phone__ModifiedD__6B24EA82] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Phone] ADD CONSTRAINT [PK__Phone__F8A6A36F735BC727] PRIMARY KEY CLUSTERED  ([Phone_ID]) ON [PRIMARY]
GO
ALTER TABLE [Customer].[Phone] ADD CONSTRAINT [FK__Phone__Person_id__693CA210] FOREIGN KEY ([Person_id]) REFERENCES [Customer].[Person] ([person_ID])
GO
ALTER TABLE [Customer].[Phone] ADD CONSTRAINT [FK__Phone__TypeOfPho__6A30C649] FOREIGN KEY ([TypeOfPhone]) REFERENCES [Customer].[PhoneType] ([TypeOfPhone])
GO
