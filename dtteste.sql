CREATE DATABASE DTTESTE;
GO
USE [DTTESTE]
GO
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO

CREATE TABLE [dbo].[clientes] (
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](20) NULL,
	[cnpj] [nvarchar] (20) NULL,
	[cpf] [nvarchar] (11) NULL,
	[ativo] [bit] NULL,
	
	CONSTRAINT [PK_clientes] PRIMARY KEY ([id])
)
GO
CREATE TABLE [dbo].[produtos] (
	[id [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar] (20) NULL,
	[tipo_medida] [var (2) NULL,
	[tipo_produto] [varchar] (1) NULL
	CONSTRAINT [PK_produtos] PRIMARY KEY ([id])

)
GO
REATE TABLE [dbo].[usuario] (
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[senha] [nvarchar](32) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	CONSTRAINT [PK_usuario] PRIMARY KEY ([id])
)
GO

ALTER TABLE [dbo].[usuario] ADD CONSTRAINT unique_usuario_email unique ([email])
GO
ALTER TABLE [dbo].[clientes] WITH CHECK ADD FOREIGN KEY([id_clientes]) REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[produtos] WITH CHECK ADD FOREIGN KEY([id_produtos]) REFERENCES [dbo].[produtos] ([id])
GO






