USE [requerimientos]
GO
/****** Object:  Table [dbo].[requerimiento_log]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[requerimiento_log](
	[idrequerimiento] [int] NOT NULL,
	[codigo] [varchar](50) NULL,
	[idproyecto] [int] NULL,
	[nombre] [nchar](40) NULL,
	[descripcion] [varchar](200) NULL,
	[insert_date] [date] NULL,
	[update_date] [date] NULL,
	[insert_idusuario] [int] NULL,
	[update_idusuario] [int] NULL,
	[idsubtiporequerimiento] [int] NULL,
	[prioridad] [varchar](10) NULL,
	[status] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proyecto]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[proyecto](
	[idproyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](30) NULL,
	[fechainicio] [date] NULL,
	[descripcion] [varbinary](200) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_proyecto] PRIMARY KEY CLUSTERED 
(
	[idproyecto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[perfilproyecto]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfilproyecto](
	[idperfilproyecto] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_perfilproyecto] PRIMARY KEY CLUSTERED 
(
	[idperfilproyecto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil](
	[idperfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_perfil] PRIMARY KEY CLUSTERED 
(
	[idperfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiporequerimiento]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiporequerimiento](
	[idtiporequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_tiporequerimiento] PRIMARY KEY CLUSTERED 
(
	[idtiporequerimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subtiporequerimiento]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subtiporequerimiento](
	[idsubtiporequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[idtiporequerimiento] [int] NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_suttiporequerimiento] PRIMARY KEY CLUSTERED 
(
	[idsubtiporequerimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](10) NULL,
	[clave] [nchar](10) NULL,
	[idperfil] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[log_requerimientos]    Script Date: 11/06/2011 21:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[log_requerimientos]
AS
SELECT     idrequerimiento, codigo, idproyecto, nombre, status, prioridad, idsubtiporequerimiento, update_idusuario, insert_idusuario, insert_date, update_date
FROM         dbo.requerimiento_log AS requerimiento_log_1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "requerimiento_log_1"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'log_requerimientos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'log_requerimientos'
GO
/****** Object:  Table [dbo].[Requerimiento]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requerimiento](
	[idrequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NULL,
	[idproyecto] [int] NOT NULL,
	[nombre] [nchar](40) NULL,
	[descripcion] [varchar](200) NULL,
	[insert_date] [date] NULL,
	[update_date] [date] NULL,
	[insert_idusuario] [int] NULL,
	[update_idusuario] [int] NULL,
	[idsubtiporequerimiento] [int] NULL,
	[prioridad] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_Requerimiento] PRIMARY KEY CLUSTERED 
(
	[idrequerimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proyectoxusuario]    Script Date: 11/06/2011 21:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyectoxusuario](
	[idproyecto] [int] NULL,
	[idusuario] [int] NOT NULL,
	[idperfilproyecto] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Trigger [tru_default_requerimiento]    Script Date: 11/06/2011 21:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tru_default_requerimiento] ON [dbo].[Requerimiento] Instead of UPDATE AS
BEGIN
  SET NOCOUNT ON
	update dbo.requerimiento set
	
           [codigo]=u.codigo
           ,[idproyecto]=u.idproyecto
           ,[nombre]=u.nombre
           ,[descripcion]=u.descripcion
           ,[update_date]=getdate()
           ,[update_idusuario]=u.update_idusuario
           ,[idsubtiporequerimiento]=u.idsubtiporequerimiento
           ,[prioridad]=u.prioridad
           ,[status]=u.[status]
			from 
           inserted u
           where requerimiento.[idrequerimiento]=u.idrequerimiento
END
GO
/****** Object:  Trigger [tr_default_requerimiento]    Script Date: 11/06/2011 21:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_default_requerimiento] ON [dbo].[Requerimiento] Instead of INSERT AS
BEGIN
  SET NOCOUNT ON
	INSERT INTO [requerimiento]
	
           ([codigo]
           ,[idproyecto]
           ,[nombre]
           ,[descripcion]
           ,[insert_date]
           ,[update_date]
           ,[insert_idusuario]
           ,[update_idusuario]
           ,[idsubtiporequerimiento]
           ,[prioridad]
           ,[status]
           )
     select 
           codigo
           ,idproyecto
           ,nombre
           ,descripcion
           ,GETDATE()
           ,GETDATE()
           ,insert_idusuario
           ,insert_idusuario
           ,idsubtiporequerimiento
           ,prioridad
           ,[status]
           from 
           inserted
END
GO
/****** Object:  Trigger [tr_after_update]    Script Date: 11/06/2011 21:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[tr_after_update]
   ON  [dbo].[Requerimiento]
   AFTER update
AS 
BEGIN
insert [requerimiento_log]
(
	   [idrequerimiento]
      ,[codigo]
      ,[idproyecto]
      ,[nombre]
      ,[descripcion]
      
      ,[update_date]
      
      ,[update_idusuario]
      ,[idsubtiporequerimiento]
      ,[prioridad]
      ,[status]
)
SELECT [idrequerimiento]
      ,[codigo]
      ,[idproyecto]
      ,[nombre]
      ,[descripcion]
      
      ,getdate()
      
      ,[update_idusuario]
      ,[idsubtiporequerimiento]
      ,[prioridad]
      ,[status]
  FROM [requerimientos].[dbo].[requerimiento_log]





END
GO
/****** Object:  Trigger [tr_after_insert]    Script Date: 11/06/2011 21:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[tr_after_insert]
   ON  [dbo].[Requerimiento]
   AFTER insert
AS 
BEGIN
insert [requerimiento_log]
(
	   [idrequerimiento]
      ,[codigo]
      ,[idproyecto]
      ,[nombre]
      ,[descripcion]
      ,[insert_date]
      ,[update_date]
      ,[insert_idusuario]
      ,[update_idusuario]
      ,[idsubtiporequerimiento]
      ,[prioridad]
      ,[status]
)
SELECT [idrequerimiento]
      ,[codigo]
      ,[idproyecto]
      ,[nombre]
      ,[descripcion]
      ,getdate()
      ,getdate()
      ,[insert_idusuario]
      ,[insert_idusuario]
      ,[idsubtiporequerimiento]
      ,[prioridad]
      ,[status]
  FROM [requerimientos].[dbo].[requerimiento_log]





END
GO
/****** Object:  ForeignKey [FK_proyectoxusuario_perfilproyecto]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[proyectoxusuario]  WITH CHECK ADD  CONSTRAINT [FK_proyectoxusuario_perfilproyecto] FOREIGN KEY([idperfilproyecto])
REFERENCES [dbo].[perfilproyecto] ([idperfilproyecto])
GO
ALTER TABLE [dbo].[proyectoxusuario] CHECK CONSTRAINT [FK_proyectoxusuario_perfilproyecto]
GO
/****** Object:  ForeignKey [FK_proyectoxusuario_proyecto]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[proyectoxusuario]  WITH CHECK ADD  CONSTRAINT [FK_proyectoxusuario_proyecto] FOREIGN KEY([idusuario])
REFERENCES [dbo].[proyecto] ([idproyecto])
GO
ALTER TABLE [dbo].[proyectoxusuario] CHECK CONSTRAINT [FK_proyectoxusuario_proyecto]
GO
/****** Object:  ForeignKey [FK_proyectoxusuario_usuario]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[proyectoxusuario]  WITH CHECK ADD  CONSTRAINT [FK_proyectoxusuario_usuario] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[proyectoxusuario] CHECK CONSTRAINT [FK_proyectoxusuario_usuario]
GO
/****** Object:  ForeignKey [FK_Requerimiento_proyecto]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[Requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_Requerimiento_proyecto] FOREIGN KEY([idproyecto])
REFERENCES [dbo].[proyecto] ([idproyecto])
GO
ALTER TABLE [dbo].[Requerimiento] CHECK CONSTRAINT [FK_Requerimiento_proyecto]
GO
/****** Object:  ForeignKey [FK_Requerimiento_subtiporequerimiento]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[Requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_Requerimiento_subtiporequerimiento] FOREIGN KEY([idsubtiporequerimiento])
REFERENCES [dbo].[subtiporequerimiento] ([idsubtiporequerimiento])
GO
ALTER TABLE [dbo].[Requerimiento] CHECK CONSTRAINT [FK_Requerimiento_subtiporequerimiento]
GO
/****** Object:  ForeignKey [FK_Requerimiento_usuario]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[Requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_Requerimiento_usuario] FOREIGN KEY([insert_idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[Requerimiento] CHECK CONSTRAINT [FK_Requerimiento_usuario]
GO
/****** Object:  ForeignKey [FK_Requerimiento_usuario1]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[Requerimiento]  WITH CHECK ADD  CONSTRAINT [FK_Requerimiento_usuario1] FOREIGN KEY([update_idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[Requerimiento] CHECK CONSTRAINT [FK_Requerimiento_usuario1]
GO
/****** Object:  ForeignKey [FK_suttiporequerimiento_tiporequerimiento]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[subtiporequerimiento]  WITH CHECK ADD  CONSTRAINT [FK_suttiporequerimiento_tiporequerimiento] FOREIGN KEY([idtiporequerimiento])
REFERENCES [dbo].[tiporequerimiento] ([idtiporequerimiento])
GO
ALTER TABLE [dbo].[subtiporequerimiento] CHECK CONSTRAINT [FK_suttiporequerimiento_tiporequerimiento]
GO
/****** Object:  ForeignKey [FK_usuario_perfil1]    Script Date: 11/06/2011 21:59:17 ******/
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_perfil1] FOREIGN KEY([idperfil])
REFERENCES [dbo].[perfil] ([idperfil])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_perfil1]
GO
