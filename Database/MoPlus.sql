USE [master]
GO
/****** Object:  Database [InCode_ModelPlus]    Script Date: 09/04/2013 22:36:16 ******/
CREATE DATABASE [InCode_ModelPlus] ON  PRIMARY 
( NAME = N'InCode_ModelPlus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\InCode_ModelPlus.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InCode_ModelPlus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\InCode_ModelPlus_log.ldf' , SIZE = 5184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InCode_ModelPlus] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InCode_ModelPlus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InCode_ModelPlus] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET ANSI_NULLS OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET ANSI_PADDING OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET ARITHABORT OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [InCode_ModelPlus] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [InCode_ModelPlus] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [InCode_ModelPlus] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET  DISABLE_BROKER
GO
ALTER DATABASE [InCode_ModelPlus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [InCode_ModelPlus] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [InCode_ModelPlus] SET  READ_WRITE
GO
ALTER DATABASE [InCode_ModelPlus] SET RECOVERY FULL
GO
ALTER DATABASE [InCode_ModelPlus] SET  MULTI_USER
GO
ALTER DATABASE [InCode_ModelPlus] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [InCode_ModelPlus] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'InCode_ModelPlus', N'ON'
GO
USE [InCode_ModelPlus]
GO
/****** Object:  Table [dbo].[tlkpConfig_MethodType]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpConfig_MethodType](
	[MethodTypeCode] [int] NOT NULL,
	[MethodTypeName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tlkpConventions_MethodType] PRIMARY KEY CLUSTERED 
(
	[MethodTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpConfig_IdentifierType]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpConfig_IdentifierType](
	[IdentifierTypeCode] [int] NOT NULL,
	[IdentifierTypeName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tlkpConventions_IdentifierType] PRIMARY KEY CLUSTERED 
(
	[IdentifierTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpConfig_EntityType]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpConfig_EntityType](
	[EntityTypeCode] [int] NOT NULL,
	[EntityTypeName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tlkpConventions_EntityType] PRIMARY KEY CLUSTERED 
(
	[EntityTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpConfig_DatabaseType]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpConfig_DatabaseType](
	[DatabaseTypeCode] [int] NOT NULL,
	[DatabaseTypeName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tlkpConfig_DatabaseType] PRIMARY KEY CLUSTERED 
(
	[DatabaseTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_XmlDocument]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_XmlDocument](
	[XmlDocumentID] [uniqueidentifier] NOT NULL,
	[XmlDocumentName] [nvarchar](255) NOT NULL,
	[LocalName] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[BaseURI] [nvarchar](255) NOT NULL,
	[NamespaceURI] [nvarchar](255) NOT NULL,
	[DocumentType] [nvarchar](255) NOT NULL,
	[NodeType] [nvarchar](255) NOT NULL,
	[InnerText] [nvarchar](255) NOT NULL,
	[InnerXml] [nvarchar](255) NOT NULL,
	[OuterXml] [nvarchar](255) NOT NULL,
	[SchemaInfo] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tblSpecifications_XmlDocument] PRIMARY KEY CLUSTERED 
(
	[XmlDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlDatabase]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlDatabase](
	[SqlDatabaseID] [uniqueidentifier] NOT NULL,
	[SqlDatabaseName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[Owner] [nvarchar](255) NOT NULL,
	[PrimaryFilePath] [nvarchar](255) NOT NULL,
	[DefaultSchema] [nvarchar](255) NOT NULL,
	[DefaultFileGroup] [nvarchar](255) NOT NULL,
	[DefaultFullTextCatalog] [nvarchar](255) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Status] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlDatabase] PRIMARY KEY CLUSTERED 
(
	[SqlDatabaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_Tag]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_Tag](
	[TagID] [uniqueidentifier] NOT NULL,
	[TagName] [nvarchar](255) NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSolutions_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConfig_RecentSolution]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig_RecentSolution](
	[RecentSolutionId] [uniqueidentifier] NOT NULL,
	[RecentSolutionName] [nvarchar](255) NOT NULL,
	[RecentSolutionLocation] [nvarchar](255) NOT NULL,
	[LastAccessedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblConfig_RecentSolution] PRIMARY KEY CLUSTERED 
(
	[RecentSolutionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConfig_DataType]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfig_DataType](
	[DataTypeCode] [int] NOT NULL,
	[DataTypeName] [nvarchar](255) NOT NULL,
	[LengthInBits] [int] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblConventions_DataType] PRIMARY KEY CLUSTERED 
(
	[DataTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInterpreter_DebugItem]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterpreter_DebugItem](
	[DebugItemID] [uniqueidentifier] NOT NULL,
	[DebugExpression] [nvarchar](255) NULL,
	[DebugValue] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_DebugItem] PRIMARY KEY CLUSTERED 
(
	[DebugItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_Solution]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_Solution](
	[SolutionID] [uniqueidentifier] NOT NULL,
	[SolutionName] [nvarchar](255) NOT NULL,
	[Namespace] [nvarchar](255) NULL,
	[OutputSolutionFileName] [nvarchar](255) NULL,
	[CompanyName] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[ProductVersion] [nvarchar](255) NULL,
	[TemplatePath] [nvarchar](255) NULL,
	[UseRelativePaths] [bit] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Copyright] [nvarchar](2000) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblProducts_Product] PRIMARY KEY CLUSTERED 
(
	[SolutionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_PropertyBase](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsNullable] [bit] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSolutions_PropertyBase] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_Project]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_Project](
	[ProjectID] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](255) NOT NULL,
	[Namespace] [nvarchar](255) NOT NULL,
	[DbServerName] [nvarchar](255) NULL,
	[DbName] [nvarchar](255) NULL,
	[TemplatePath] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblProducts_Assembly] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_Feature]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_Feature](
	[FeatureID] [uniqueidentifier] NOT NULL,
	[FeatureName] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblProducts_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInterpreter_Template]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterpreter_Template](
	[TemplateID] [uniqueidentifier] NOT NULL,
	[TemplateName] [nvarchar](255) NOT NULL,
	[FilePath] [nvarchar](255) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[NodeName] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsTopLevelTemplate] [bit] NOT NULL,
	[HasErrors] [bit] NOT NULL,
	[IsTemplateUtilized] [bit] NOT NULL,
	[TemplateCallInfo] [nvarchar](255) NULL,
	[TemplateContent] [nvarchar](255) NULL,
	[TemplateOutput] [nvarchar](255) NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_Model]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_Model](
	[ModelID] [uniqueidentifier] NOT NULL,
	[ModelName] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Model] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiagrams_Diagram]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiagrams_Diagram](
	[DiagramID] [uniqueidentifier] NOT NULL,
	[DiagramName] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblDiagrams_Diagram] PRIMARY KEY CLUSTERED 
(
	[DiagramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_SpecificationSource]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_SpecificationSource](
	[SpecificationSourceID] [uniqueidentifier] NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[TemplatePath] [nvarchar](255) NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblProducts_SpecificationSource] PRIMARY KEY CLUSTERED 
(
	[SpecificationSourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_XmlNode]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_XmlNode](
	[XmlNodeID] [uniqueidentifier] NOT NULL,
	[XmlNodeName] [nvarchar](255) NOT NULL,
	[XmlDocumentID] [uniqueidentifier] NOT NULL,
	[LocalName] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[BaseURI] [nvarchar](255) NOT NULL,
	[Prefix] [nvarchar](255) NOT NULL,
	[NamespaceURI] [nvarchar](255) NOT NULL,
	[NodeType] [nvarchar](255) NOT NULL,
	[InnerText] [nvarchar](255) NOT NULL,
	[InnerXml] [nvarchar](255) NOT NULL,
	[OuterXml] [nvarchar](255) NOT NULL,
	[SchemaInfo] [nvarchar](255) NOT NULL,
	[ParentNodeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblSpecifications_XmlNode] PRIMARY KEY CLUSTERED 
(
	[XmlNodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlTable](
	[SqlTableID] [uniqueidentifier] NOT NULL,
	[SqlTableName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlDatabaseID] [uniqueidentifier] NOT NULL,
	[Owner] [nvarchar](255) NOT NULL,
	[Schema] [nvarchar](255) NOT NULL,
	[FileGroup] [nvarchar](255) NOT NULL,
	[CreateDate] [datetime] NULL,
	[DateLastModified] [datetime] NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlTable] PRIMARY KEY CLUSTERED 
(
	[SqlTableID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorkflows_Workflow]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorkflows_Workflow](
	[WorkflowID] [uniqueidentifier] NOT NULL,
	[WorkflowName] [nvarchar](255) NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblWorkflows_Workflow] PRIMARY KEY CLUSTERED 
(
	[WorkflowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trelSolutions_ProjectReference]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trelSolutions_ProjectReference](
	[ProjectID] [uniqueidentifier] NOT NULL,
	[ReferencedProjectID] [uniqueidentifier] NOT NULL,
	[SolutionID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_trelProducts_AssemblyReference] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[ReferencedProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorkflows_Stage]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorkflows_Stage](
	[StageID] [uniqueidentifier] NOT NULL,
	[StageName] [nvarchar](255) NOT NULL,
	[WorkflowID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblWorkflows_WorkflowStage] PRIMARY KEY CLUSTERED 
(
	[StageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlIndex]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlIndex](
	[SqlIndexID] [uniqueidentifier] NOT NULL,
	[SqlIndexName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlTableID] [uniqueidentifier] NOT NULL,
	[IsClustered] [bit] NULL,
	[IsUnique] [bit] NULL,
	[IsXmlIndex] [bit] NULL,
	[IsFullTextKey] [bit] NULL,
	[FileGroup] [nvarchar](255) NOT NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlIndex] PRIMARY KEY CLUSTERED 
(
	[SqlIndexID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_XmlAttribute]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_XmlAttribute](
	[XmlAttributeID] [uniqueidentifier] NOT NULL,
	[XmlAttributeName] [nvarchar](255) NOT NULL,
	[XmlNodeID] [uniqueidentifier] NOT NULL,
	[LocalName] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[BaseURI] [nvarchar](255) NOT NULL,
	[Prefix] [nvarchar](255) NOT NULL,
	[NamespaceURI] [nvarchar](255) NOT NULL,
	[NodeType] [nvarchar](255) NOT NULL,
	[InnerText] [nvarchar](255) NOT NULL,
	[InnerXml] [nvarchar](255) NOT NULL,
	[OuterXml] [nvarchar](255) NOT NULL,
	[SchemaInfo] [nvarchar](255) NOT NULL,
	[XmlDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblSpecifications_XmlAttribute] PRIMARY KEY CLUSTERED 
(
	[XmlAttributeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlColumn]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlColumn](
	[SqlColumnID] [uniqueidentifier] NOT NULL,
	[SqlColumnName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlTableID] [uniqueidentifier] NOT NULL,
	[DataType] [nvarchar](255) NOT NULL,
	[MaximumLength] [int] NOT NULL,
	[NumericPrecision] [int] NOT NULL,
	[NumericScale] [int] NOT NULL,
	[Default] [nvarchar](255) NOT NULL,
	[DefaultSchema] [nvarchar](255) NOT NULL,
	[IsFullTextIndexed] [bit] NULL,
	[IsForeignKey] [bit] NULL,
	[InPrimaryKey] [bit] NULL,
	[Nullable] [bit] NULL,
	[Identity] [bit] NULL,
	[IdentitySeed] [bigint] NULL,
	[IdentityIncrement] [bigint] NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlColumn] PRIMARY KEY CLUSTERED 
(
	[SqlColumnID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_XmlSource]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_XmlSource](
	[SpecificationSourceID] [uniqueidentifier] NOT NULL,
	[SourceFileName] [nvarchar](255) NOT NULL,
	[SourceFilePath] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tblProducts_XmlSpecificationSource] PRIMARY KEY CLUSTERED 
(
	[SpecificationSourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlForeignKey]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlForeignKey](
	[SqlForeignKeyID] [uniqueidentifier] NOT NULL,
	[SqlForeignKeyName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlTableID] [uniqueidentifier] NOT NULL,
	[ReferencedKey] [nvarchar](255) NOT NULL,
	[ReferencedTable] [nvarchar](255) NOT NULL,
	[ReferencedTableSchema] [nvarchar](255) NOT NULL,
	[IsChecked] [bit] NULL,
	[IsSystemNamed] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[DateLastModified] [datetime] NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlForeignKey] PRIMARY KEY CLUSTERED 
(
	[SqlForeignKeyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Entity](
	[EntityID] [uniqueidentifier] NOT NULL,
	[EntityName] [nvarchar](255) NOT NULL,
	[EntityTypeCode] [int] NOT NULL,
	[IdentifierTypeCode] [int] NOT NULL,
	[FeatureID] [uniqueidentifier] NOT NULL,
	[BaseEntityID] [uniqueidentifier] NULL,
	[GroupName] [nvarchar](255) NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_Entity] PRIMARY KEY CLUSTERED 
(
	[EntityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_Enumeration]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_Enumeration](
	[EnumerationID] [uniqueidentifier] NOT NULL,
	[EnumerationName] [nvarchar](255) NOT NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Enumeration] PRIMARY KEY CLUSTERED 
(
	[EnumerationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInterpreter_SpecTemplate]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterpreter_SpecTemplate](
	[TemplateID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblInterpreter_SpecTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_ModelObject]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_ModelObject](
	[ModelObjectID] [uniqueidentifier] NOT NULL,
	[ModelObjectName] [nvarchar](255) NOT NULL,
	[ParentModelObjectID] [uniqueidentifier] NULL,
	[ModelID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Object] PRIMARY KEY CLUSTERED 
(
	[ModelObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInterpreter_CodeTemplate]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterpreter_CodeTemplate](
	[TemplateID] [uniqueidentifier] NOT NULL,
	[SpecificationDirectory] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblInterpreter_CodeTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_DatabaseSource]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_DatabaseSource](
	[SpecificationSourceID] [uniqueidentifier] NOT NULL,
	[SourceDbServerName] [nvarchar](255) NOT NULL,
	[SourceDbName] [nvarchar](255) NOT NULL,
	[DatabaseTypeCode] [int] NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblProducts_DatabaseSpecificationSource] PRIMARY KEY CLUSTERED 
(
	[SpecificationSourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolutions_AuditProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolutions_AuditProperty](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[PropertyName] [nvarchar](255) NOT NULL,
	[IsAddAuditProperty] [bit] NOT NULL,
	[IsUpdateAuditProperty] [bit] NOT NULL,
	[IsValueGenerated] [bit] NOT NULL,
	[DataTypeCode] [int] NOT NULL,
	[Precision] [int] NULL,
	[Scale] [int] NULL,
	[InitialValue] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblProducts_AuditProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_Value]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_Value](
	[ValueID] [uniqueidentifier] NOT NULL,
	[ValueName] [nvarchar](255) NOT NULL,
	[EnumValue] [nvarchar](255) NOT NULL,
	[Order] [int] NOT NULL,
	[EnumerationID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Value] PRIMARY KEY CLUSTERED 
(
	[ValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_ObjectInstance]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_ObjectInstance](
	[ObjectInstanceID] [uniqueidentifier] NOT NULL,
	[ParentObjectInstanceID] [uniqueidentifier] NULL,
	[ModelObjectID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblModels_ObjectInstance] PRIMARY KEY CLUSTERED 
(
	[ObjectInstanceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Index]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Index](
	[IndexID] [uniqueidentifier] NOT NULL,
	[IndexName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[IsPrimaryKeyIndex] [bit] NOT NULL,
	[IsUniqueIndex] [bit] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityIndex] PRIMARY KEY CLUSTERED 
(
	[IndexID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_EntityReference]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_EntityReference](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[EntityReferenceName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[ReferencedEntityID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEntities_ReferenceEntityProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Collection]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Collection](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[CollectionName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[ReferencedEntityID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEntities_CollectionEntityProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiagrams_DiagramEntity]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiagrams_DiagramEntity](
	[DiagramEntityID] [uniqueidentifier] NOT NULL,
	[DiagramID] [uniqueidentifier] NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[PositionX] [float] NOT NULL,
	[PositionY] [float] NOT NULL,
	[ShowPropertyArcs] [bit] NOT NULL,
	[ShowPropertyReferenceArcs] [bit] NOT NULL,
	[ShowCollectionArcs] [bit] NOT NULL,
	[ShowEntityReferenceArcs] [bit] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblDiagrams_DiagramEntity] PRIMARY KEY CLUSTERED 
(
	[DiagramEntityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Method]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Method](
	[MethodID] [uniqueidentifier] NOT NULL,
	[MethodName] [nvarchar](255) NOT NULL,
	[MethodTypeCode] [int] NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_Method] PRIMARY KEY CLUSTERED 
(
	[MethodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Property]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Property](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[PropertyName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[IsPrimaryKeyMember] [bit] NOT NULL,
	[IsForeignKeyMember] [bit] NOT NULL,
	[DataTypeCode] [int] NOT NULL,
	[Length] [int] NULL,
	[Precision] [int] NULL,
	[Scale] [int] NULL,
	[InitialValue] [nvarchar](255) NULL,
	[Identity] [bit] NULL,
	[IdentitySeed] [bigint] NULL,
	[IdentityIncrement] [bigint] NULL,
 CONSTRAINT [PK_tblEntities_EntityDataProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Relationship]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Relationship](
	[RelationshipID] [uniqueidentifier] NOT NULL,
	[RelationshipName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[ReferencedEntityID] [uniqueidentifier] NOT NULL,
	[IsNullable] [bit] NOT NULL,
	[ItemsMin] [int] NOT NULL,
	[ItemsMax] [int] NOT NULL,
	[ReferencedItemsMin] [int] NOT NULL,
	[ReferencedItemsMax] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityRelationship] PRIMARY KEY CLUSTERED 
(
	[RelationshipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_StateModel]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_StateModel](
	[StateModelID] [uniqueidentifier] NOT NULL,
	[StateModelName] [nvarchar](255) NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_StateModel] PRIMARY KEY CLUSTERED 
(
	[StateModelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlExtendedProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlExtendedProperty](
	[SqlExtendedPropertyID] [uniqueidentifier] NOT NULL,
	[SqlExtendedPropertyName] [nvarchar](255) NOT NULL,
	[SqlValue] [nvarchar](255) NOT NULL,
	[SqlDatabaseID] [uniqueidentifier] NOT NULL,
	[SqlTableID] [uniqueidentifier] NULL,
	[SqlColumnID] [uniqueidentifier] NULL,
	[SqlIndexID] [uniqueidentifier] NULL,
	[SqlForeignKeyID] [uniqueidentifier] NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tblSpecifications_SqlExtendedProperty] PRIMARY KEY CLUSTERED 
(
	[SqlExtendedPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlIndexedColumn]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlIndexedColumn](
	[SqlIndexedColumnID] [uniqueidentifier] NOT NULL,
	[SqlIndexedColumnName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlIndexID] [uniqueidentifier] NOT NULL,
	[IsIncluded] [bit] NULL,
	[IsComputed] [bit] NULL,
	[Descending] [bit] NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlIndexedColumn] PRIMARY KEY CLUSTERED 
(
	[SqlIndexedColumnID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlForeignKeyColumn]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlForeignKeyColumn](
	[SqlForeignKeyColumnID] [uniqueidentifier] NOT NULL,
	[SqlForeignKeyColumnName] [nvarchar](255) NOT NULL,
	[DbID] [int] NULL,
	[SqlForeignKeyID] [uniqueidentifier] NOT NULL,
	[ReferencedColumn] [nvarchar](255) NOT NULL,
	[Urn] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblSpecifications_SqlForeignKeyColumn] PRIMARY KEY CLUSTERED 
(
	[SqlForeignKeyColumnID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorkflows_Step]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorkflows_Step](
	[StepID] [uniqueidentifier] NOT NULL,
	[StepName] [nvarchar](255) NOT NULL,
	[StageID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblWorkflows_WorkflowStep] PRIMARY KEY CLUSTERED 
(
	[StepID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorkflows_StageTransition]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorkflows_StageTransition](
	[StageTransitionID] [uniqueidentifier] NOT NULL,
	[StageTransitionName] [nvarchar](255) NOT NULL,
	[FromStageID] [uniqueidentifier] NULL,
	[ToStageID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblWorkflows_WorkflowStageTransition] PRIMARY KEY CLUSTERED 
(
	[StageTransitionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorkflows_StepTransition]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorkflows_StepTransition](
	[StepTransitionID] [uniqueidentifier] NOT NULL,
	[StepTransitionName] [nvarchar](255) NOT NULL,
	[FromStepID] [uniqueidentifier] NULL,
	[ToStepID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblWorkflows_WorkflowStepTransition] PRIMARY KEY CLUSTERED 
(
	[StepTransitionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecifications_SqlProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecifications_SqlProperty](
	[SqlPropertyID] [uniqueidentifier] NOT NULL,
	[SqlPropertyName] [nvarchar](255) NOT NULL,
	[SqlType] [nvarchar](255) NOT NULL,
	[SqlValue] [nvarchar](255) NOT NULL,
	[SqlDatabaseID] [uniqueidentifier] NOT NULL,
	[SqlTableID] [uniqueidentifier] NULL,
	[SqlColumnID] [uniqueidentifier] NULL,
	[SqlIndexID] [uniqueidentifier] NULL,
	[SqlIndexedColumnID] [uniqueidentifier] NULL,
	[SqlForeignKeyID] [uniqueidentifier] NULL,
	[SqlForeignKeyColumnID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblSpecifications_SqlProperty] PRIMARY KEY CLUSTERED 
(
	[SqlPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_State]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_State](
	[StateID] [uniqueidentifier] NOT NULL,
	[StateName] [nvarchar](255) NOT NULL,
	[StateModelID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityState] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_RelationshipProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_RelationshipProperty](
	[RelationshipPropertyID] [uniqueidentifier] NOT NULL,
	[RelationshipID] [uniqueidentifier] NOT NULL,
	[PropertyID] [uniqueidentifier] NOT NULL,
	[ReferencedPropertyID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityRelationshipProperty] PRIMARY KEY CLUSTERED 
(
	[RelationshipPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_PropertyRelationship]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_PropertyRelationship](
	[PropertyRelationshipID] [uniqueidentifier] NOT NULL,
	[PropertyID] [uniqueidentifier] NOT NULL,
	[RelationshipID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_PropertyRelationship] PRIMARY KEY CLUSTERED 
(
	[PropertyRelationshipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_PropertyReference]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_PropertyReference](
	[PropertyID] [uniqueidentifier] NOT NULL,
	[PropertyReferenceName] [nvarchar](255) NOT NULL,
	[ReferencedEntityID] [uniqueidentifier] NOT NULL,
	[ReferencedPropertyID] [uniqueidentifier] NOT NULL,
	[EntityID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblEntities_DerivedEntityDataProperty] PRIMARY KEY CLUSTERED 
(
	[PropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_Parameter]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_Parameter](
	[ParameterID] [uniqueidentifier] NOT NULL,
	[ParameterName] [nvarchar](255) NOT NULL,
	[MethodID] [uniqueidentifier] NOT NULL,
	[ReferencedEntityID] [uniqueidentifier] NOT NULL,
	[ReferencedPropertyID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_MethodParameter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_MethodRelationship]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_MethodRelationship](
	[MethodRelationshipID] [uniqueidentifier] NOT NULL,
	[MethodID] [uniqueidentifier] NOT NULL,
	[RelationshipID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_MethodRelationship] PRIMARY KEY CLUSTERED 
(
	[MethodRelationshipID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_IndexProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_IndexProperty](
	[IndexPropertyID] [uniqueidentifier] NOT NULL,
	[IndexID] [uniqueidentifier] NOT NULL,
	[PropertyID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityIndexProperty] PRIMARY KEY CLUSTERED 
(
	[IndexPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_ModelProperty]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_ModelProperty](
	[ModelPropertyID] [uniqueidentifier] NOT NULL,
	[ModelPropertyName] [nvarchar](255) NOT NULL,
	[Order] [int] NOT NULL,
	[ModelObjectID] [uniqueidentifier] NOT NULL,
	[DefinedByModelObjectID] [uniqueidentifier] NULL,
	[DefinedByEnumerationID] [uniqueidentifier] NULL,
	[DefinedByValueID] [uniqueidentifier] NULL,
	[IsCollection] [bit] NOT NULL,
	[IsDisplayProperty] [bit] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblInterpreter_Property] PRIMARY KEY CLUSTERED 
(
	[ModelPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels_PropertyInstance]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels_PropertyInstance](
	[PropertyInstanceID] [uniqueidentifier] NOT NULL,
	[ModelPropertyID] [uniqueidentifier] NOT NULL,
	[ObjectInstanceID] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[PropertyValue] [nvarchar](255) NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblModels_PropertyInstance] PRIMARY KEY CLUSTERED 
(
	[PropertyInstanceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEntities_StateTransition]    Script Date: 09/04/2013 22:36:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntities_StateTransition](
	[StateTransitionID] [uniqueidentifier] NOT NULL,
	[StateTransitionName] [nvarchar](255) NOT NULL,
	[FromStateID] [uniqueidentifier] NULL,
	[ToStateID] [uniqueidentifier] NOT NULL,
	[IsAutoUpdated] [bit] NOT NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_tblEntities_EntityStateTransition] PRIMARY KEY CLUSTERED 
(
	[StateTransitionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_tblSpecifications_XmlDocument_EntityID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlDocument] ADD  CONSTRAINT [DF_tblSpecifications_XmlDocument_EntityID]  DEFAULT (newid()) FOR [XmlDocumentID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlDatabase_XmlNodeID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlDatabase] ADD  CONSTRAINT [DF_tblSpecifications_SqlDatabase_XmlNodeID]  DEFAULT (newid()) FOR [SqlDatabaseID]
GO
/****** Object:  Default [DF_tblSolutions_Tag_EntityID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Tag] ADD  CONSTRAINT [DF_tblSolutions_Tag_EntityID]  DEFAULT (newid()) FOR [TagID]
GO
/****** Object:  Default [DF_tblSolutions_Tag_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Tag] ADD  CONSTRAINT [DF_tblSolutions_Tag_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblConfig_RecentSolution_DiagramEntityID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblConfig_RecentSolution] ADD  CONSTRAINT [DF_tblConfig_RecentSolution_DiagramEntityID]  DEFAULT (newid()) FOR [RecentSolutionId]
GO
/****** Object:  Default [DF_tblConventions_DataType_LengthInBits]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblConfig_DataType] ADD  CONSTRAINT [DF_tblConventions_DataType_LengthInBits]  DEFAULT ((0)) FOR [LengthInBits]
GO
/****** Object:  Default [DF_tblInterpreter_DebugItem_TemplateID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_DebugItem] ADD  CONSTRAINT [DF_tblInterpreter_DebugItem_TemplateID]  DEFAULT (newid()) FOR [DebugItemID]
GO
/****** Object:  Default [DF_tblProducts_Product_ProductID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Solution] ADD  CONSTRAINT [DF_tblProducts_Product_ProductID]  DEFAULT (newid()) FOR [SolutionID]
GO
/****** Object:  Default [DF_tblSolutions_Solution_IsAutoUpdated1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Solution] ADD  CONSTRAINT [DF_tblSolutions_Solution_IsAutoUpdated1]  DEFAULT ((0)) FOR [UseRelativePaths]
GO
/****** Object:  Default [DF_tblSolutions_Solution_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Solution] ADD  CONSTRAINT [DF_tblSolutions_Solution_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblSolutions_PropertyBase_SolutionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_PropertyBase] ADD  CONSTRAINT [DF_tblSolutions_PropertyBase_SolutionID]  DEFAULT (newid()) FOR [SolutionID]
GO
/****** Object:  Default [DF_tblSolutions_PropertyBase_IsNullable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_PropertyBase] ADD  CONSTRAINT [DF_tblSolutions_PropertyBase_IsNullable]  DEFAULT ((0)) FOR [IsNullable]
GO
/****** Object:  Default [DF_tblSolutions_PropertyBase_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_PropertyBase] ADD  CONSTRAINT [DF_tblSolutions_PropertyBase_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblSolutions_PropertyBase_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_PropertyBase] ADD  CONSTRAINT [DF_tblSolutions_PropertyBase_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblProducts_Assembly_AssemblyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Project] ADD  CONSTRAINT [DF_tblProducts_Assembly_AssemblyID]  DEFAULT (newid()) FOR [ProjectID]
GO
/****** Object:  Default [DF_tblSolutions_Project_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Project] ADD  CONSTRAINT [DF_tblSolutions_Project_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblProducts_Feature_FeatureID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Feature] ADD  CONSTRAINT [DF_tblProducts_Feature_FeatureID]  DEFAULT (newid()) FOR [FeatureID]
GO
/****** Object:  Default [DF_tblProducts_Feature_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Feature] ADD  CONSTRAINT [DF_tblProducts_Feature_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_Template_SolutionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_SolutionID]  DEFAULT (newid()) FOR [TemplateID]
GO
/****** Object:  Default [DF_tblInterpreter_Template_SolutionID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_SolutionID_1]  DEFAULT (newid()) FOR [SolutionID]
GO
/****** Object:  Default [DF_tblInterpreter_Template_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_IsAutoUpdated]  DEFAULT ((0)) FOR [IsTopLevelTemplate]
GO
/****** Object:  Default [DF_tblInterpreter_Template_IsTopLevelTemplate1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_IsTopLevelTemplate1]  DEFAULT ((0)) FOR [HasErrors]
GO
/****** Object:  Default [DF_tblInterpreter_Template_HasErrors1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_HasErrors1]  DEFAULT ((0)) FOR [IsTemplateUtilized]
GO
/****** Object:  Default [DF_tblInterpreter_Template_IsAutoUpdated_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template] ADD  CONSTRAINT [DF_tblInterpreter_Template_IsAutoUpdated_1]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_Model_SolutionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Model] ADD  CONSTRAINT [DF_tblInterpreter_Model_SolutionID]  DEFAULT (newid()) FOR [ModelID]
GO
/****** Object:  Default [DF_tblInterpreter_Model_SolutionID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Model] ADD  CONSTRAINT [DF_tblInterpreter_Model_SolutionID_1]  DEFAULT (newid()) FOR [SolutionID]
GO
/****** Object:  Default [DF_tblInterpreter_Model_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Model] ADD  CONSTRAINT [DF_tblInterpreter_Model_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblDiagrams_Diagram_SolutionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_Diagram] ADD  CONSTRAINT [DF_tblDiagrams_Diagram_SolutionID]  DEFAULT (newid()) FOR [DiagramID]
GO
/****** Object:  Default [DF_tblDiagrams_Diagram_SolutionID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_Diagram] ADD  CONSTRAINT [DF_tblDiagrams_Diagram_SolutionID_1]  DEFAULT (newid()) FOR [SolutionID]
GO
/****** Object:  Default [DF_tblDiagrams_Diagram_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_Diagram] ADD  CONSTRAINT [DF_tblDiagrams_Diagram_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblProducts_SpecificationSource_SpecificationSourceID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_SpecificationSource] ADD  CONSTRAINT [DF_tblProducts_SpecificationSource_SpecificationSourceID]  DEFAULT (newid()) FOR [SpecificationSourceID]
GO
/****** Object:  Default [DF_tblSolutions_SpecificationSource_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_SpecificationSource] ADD  CONSTRAINT [DF_tblSolutions_SpecificationSource_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblSolutions_SpecificationSource_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_SpecificationSource] ADD  CONSTRAINT [DF_tblSolutions_SpecificationSource_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblSpecifications_XmlNode_XmlDocumentID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlNode] ADD  CONSTRAINT [DF_tblSpecifications_XmlNode_XmlDocumentID]  DEFAULT (newid()) FOR [XmlNodeID]
GO
/****** Object:  Default [DF_tblSpecifications_XmlNode_XmlDocumentID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlNode] ADD  CONSTRAINT [DF_tblSpecifications_XmlNode_XmlDocumentID_1]  DEFAULT (newid()) FOR [XmlDocumentID]
GO
/****** Object:  Default [DF_tblSpecifications_XmlNode_XmlDocumentID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlNode] ADD  CONSTRAINT [DF_tblSpecifications_XmlNode_XmlDocumentID1]  DEFAULT (newid()) FOR [ParentNodeID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlTable_SqlDatabaseID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlTable] ADD  CONSTRAINT [DF_tblSpecifications_SqlTable_SqlDatabaseID]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlTable_SqlDatabaseID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlTable] ADD  CONSTRAINT [DF_tblSpecifications_SqlTable_SqlDatabaseID_1]  DEFAULT (newid()) FOR [SqlDatabaseID]
GO
/****** Object:  Default [DF_tblWorkflows_Workflow_WorkflowID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Workflow] ADD  CONSTRAINT [DF_tblWorkflows_Workflow_WorkflowID]  DEFAULT (newid()) FOR [WorkflowID]
GO
/****** Object:  Default [DF_tblWorkflows_Workflow_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Workflow] ADD  CONSTRAINT [DF_tblWorkflows_Workflow_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStage_WorkflowStageID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Stage] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStage_WorkflowStageID]  DEFAULT (newid()) FOR [StageID]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStage_PropertyOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Stage] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStage_PropertyOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblWorkflows_Stage_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Stage] ADD  CONSTRAINT [DF_tblWorkflows_Stage_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblSpecifications_SqlIndex_SqlTableID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndex] ADD  CONSTRAINT [DF_tblSpecifications_SqlIndex_SqlTableID]  DEFAULT (newid()) FOR [SqlIndexID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlIndex_SqlTableID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndex] ADD  CONSTRAINT [DF_tblSpecifications_SqlIndex_SqlTableID_1]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblSpecifications_XmlAttribute_XmlDocumentID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute] ADD  CONSTRAINT [DF_tblSpecifications_XmlAttribute_XmlDocumentID]  DEFAULT (newid()) FOR [XmlAttributeID]
GO
/****** Object:  Default [DF_tblSpecifications_XmlAttribute_XmlNodeID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute] ADD  CONSTRAINT [DF_tblSpecifications_XmlAttribute_XmlNodeID]  DEFAULT (newid()) FOR [XmlNodeID]
GO
/****** Object:  Default [DF_tblSpecifications_XmlAttribute_XmlDocumentID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute] ADD  CONSTRAINT [DF_tblSpecifications_XmlAttribute_XmlDocumentID_1]  DEFAULT (newid()) FOR [XmlDocumentID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlColumn_SqlDatabaseID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlColumn_SqlDatabaseID]  DEFAULT (newid()) FOR [SqlColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlColumn_SqlTableID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlColumn_SqlTableID]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlForeignKey_SqlIndexedColumnID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKey] ADD  CONSTRAINT [DF_tblSpecifications_SqlForeignKey_SqlIndexedColumnID]  DEFAULT (newid()) FOR [SqlForeignKeyID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlForeignKey_SqlTableID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKey] ADD  CONSTRAINT [DF_tblSpecifications_SqlForeignKey_SqlTableID]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblEntities_Entity_EntityID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity] ADD  CONSTRAINT [DF_tblEntities_Entity_EntityID]  DEFAULT (newid()) FOR [EntityID]
GO
/****** Object:  Default [DF_tblEntities_Entity_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity] ADD  CONSTRAINT [DF_tblEntities_Entity_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_Enumeration_ObjectID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Enumeration] ADD  CONSTRAINT [DF_tblInterpreter_Enumeration_ObjectID]  DEFAULT (newid()) FOR [EnumerationID]
GO
/****** Object:  Default [DF_tblInterpreter_Enumeration_ModelID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Enumeration] ADD  CONSTRAINT [DF_tblInterpreter_Enumeration_ModelID]  DEFAULT (newid()) FOR [ModelID]
GO
/****** Object:  Default [DF_tblInterpreter_Enumeration_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Enumeration] ADD  CONSTRAINT [DF_tblInterpreter_Enumeration_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_SpecTemplate_TemplateID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_SpecTemplate] ADD  CONSTRAINT [DF_tblInterpreter_SpecTemplate_TemplateID]  DEFAULT (newid()) FOR [TemplateID]
GO
/****** Object:  Default [DF_tblInterpreter_Object_ModelID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject] ADD  CONSTRAINT [DF_tblInterpreter_Object_ModelID]  DEFAULT (newid()) FOR [ModelObjectID]
GO
/****** Object:  Default [DF_tblModels_ModelObject_ModelObjectID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject] ADD  CONSTRAINT [DF_tblModels_ModelObject_ModelObjectID1]  DEFAULT (newid()) FOR [ParentModelObjectID]
GO
/****** Object:  Default [DF_tblInterpreter_Object_ModelID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject] ADD  CONSTRAINT [DF_tblInterpreter_Object_ModelID_1]  DEFAULT (newid()) FOR [ModelID]
GO
/****** Object:  Default [DF_tblInterpreter_ModelObject_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject] ADD  CONSTRAINT [DF_tblInterpreter_ModelObject_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_CodeTemplate_TemplateID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_CodeTemplate] ADD  CONSTRAINT [DF_tblInterpreter_CodeTemplate_TemplateID]  DEFAULT (newid()) FOR [TemplateID]
GO
/****** Object:  Default [DF_tblProducts_AuditProperty_IsAddProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty] ADD  CONSTRAINT [DF_tblProducts_AuditProperty_IsAddProperty]  DEFAULT ((0)) FOR [IsAddAuditProperty]
GO
/****** Object:  Default [DF_tblProducts_AuditProperty_IsUpdateProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty] ADD  CONSTRAINT [DF_tblProducts_AuditProperty_IsUpdateProperty]  DEFAULT ((0)) FOR [IsUpdateAuditProperty]
GO
/****** Object:  Default [DF_tblProducts_AuditProperty_IsValueGenerated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty] ADD  CONSTRAINT [DF_tblProducts_AuditProperty_IsValueGenerated]  DEFAULT ((0)) FOR [IsValueGenerated]
GO
/****** Object:  Default [DF_tblSolutions_AuditProperty_Precision]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty] ADD  CONSTRAINT [DF_tblSolutions_AuditProperty_Precision]  DEFAULT ((0)) FOR [Precision]
GO
/****** Object:  Default [DF_tblSolutions_AuditProperty_Scale]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty] ADD  CONSTRAINT [DF_tblSolutions_AuditProperty_Scale]  DEFAULT ((0)) FOR [Scale]
GO
/****** Object:  Default [DF_tblInterpreter_Value_EnumerationID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Value] ADD  CONSTRAINT [DF_tblInterpreter_Value_EnumerationID]  DEFAULT (newid()) FOR [ValueID]
GO
/****** Object:  Default [DF_tblModels_Value_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Value] ADD  CONSTRAINT [DF_tblModels_Value_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblInterpreter_Value_EnumerationID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Value] ADD  CONSTRAINT [DF_tblInterpreter_Value_EnumerationID_1]  DEFAULT (newid()) FOR [EnumerationID]
GO
/****** Object:  Default [DF_tblInterpreter_Value_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Value] ADD  CONSTRAINT [DF_tblInterpreter_Value_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblModels_ObjectInstance_ModelObjectID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance] ADD  CONSTRAINT [DF_tblModels_ObjectInstance_ModelObjectID]  DEFAULT (newid()) FOR [ObjectInstanceID]
GO
/****** Object:  Default [DF_tblModels_ObjectInstance_ParentModelObjectID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance] ADD  CONSTRAINT [DF_tblModels_ObjectInstance_ParentModelObjectID_1]  DEFAULT (newid()) FOR [ParentObjectInstanceID]
GO
/****** Object:  Default [DF_tblModels_ObjectInstance_ParentModelObjectID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance] ADD  CONSTRAINT [DF_tblModels_ObjectInstance_ParentModelObjectID]  DEFAULT (newid()) FOR [ModelObjectID]
GO
/****** Object:  Default [DF_tblModels_ObjectInstance_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance] ADD  CONSTRAINT [DF_tblModels_ObjectInstance_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_EntityIndex_EntityIndexID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Index] ADD  CONSTRAINT [DF_tblEntities_EntityIndex_EntityIndexID]  DEFAULT (newid()) FOR [IndexID]
GO
/****** Object:  Default [DF_tblEntities_EntityIndex_IsPrimaryKeyIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Index] ADD  CONSTRAINT [DF_tblEntities_EntityIndex_IsPrimaryKeyIndex]  DEFAULT ((0)) FOR [IsPrimaryKeyIndex]
GO
/****** Object:  Default [DF_tblEntities_EntityIndex_IsUniqueIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Index] ADD  CONSTRAINT [DF_tblEntities_EntityIndex_IsUniqueIndex]  DEFAULT ((0)) FOR [IsUniqueIndex]
GO
/****** Object:  Default [DF_tblEntities_EntityIndex_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Index] ADD  CONSTRAINT [DF_tblEntities_EntityIndex_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_DiagramID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_DiagramID]  DEFAULT (newid()) FOR [DiagramEntityID]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_SolutionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_SolutionID]  DEFAULT (newid()) FOR [DiagramID]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_EntityID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_EntityID]  DEFAULT (newid()) FOR [EntityID]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_PositionX1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_PositionX1]  DEFAULT ((0)) FOR [PositionX]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_PositionX]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_PositionX]  DEFAULT ((0)) FOR [PositionY]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_IsAutoUpdated1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_IsAutoUpdated1]  DEFAULT ((0)) FOR [ShowPropertyArcs]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_ShowPropertyArcs1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_ShowPropertyArcs1]  DEFAULT ((0)) FOR [ShowPropertyReferenceArcs]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_IsAutoUpdated1_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_IsAutoUpdated1_1]  DEFAULT ((0)) FOR [ShowCollectionArcs]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_ShowCollectionArcs1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_ShowCollectionArcs1]  DEFAULT ((0)) FOR [ShowEntityReferenceArcs]
GO
/****** Object:  Default [DF_tblDiagrams_DiagramEntity_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] ADD  CONSTRAINT [DF_tblDiagrams_DiagramEntity_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_Method_MethodID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Method] ADD  CONSTRAINT [DF_tblEntities_Method_MethodID]  DEFAULT (newid()) FOR [MethodID]
GO
/****** Object:  Default [DF_tblEntities_Method_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Method] ADD  CONSTRAINT [DF_tblEntities_Method_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_EntityDataProperty_IsPrimaryKeyMember]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property] ADD  CONSTRAINT [DF_tblEntities_EntityDataProperty_IsPrimaryKeyMember]  DEFAULT ((0)) FOR [IsPrimaryKeyMember]
GO
/****** Object:  Default [DF_tblEntities_EntityDataProperty_IsForeignKeyMember]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property] ADD  CONSTRAINT [DF_tblEntities_EntityDataProperty_IsForeignKeyMember]  DEFAULT ((0)) FOR [IsForeignKeyMember]
GO
/****** Object:  Default [DF_tblEntities_EntityDataProperty_Count]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property] ADD  CONSTRAINT [DF_tblEntities_EntityDataProperty_Count]  DEFAULT ((1)) FOR [Length]
GO
/****** Object:  Default [DF_tblEntities_EntityDataProperty_Precision]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property] ADD  CONSTRAINT [DF_tblEntities_EntityDataProperty_Precision]  DEFAULT ((0)) FOR [Precision]
GO
/****** Object:  Default [DF_tblEntities_EntityDataProperty_Scale]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property] ADD  CONSTRAINT [DF_tblEntities_EntityDataProperty_Scale]  DEFAULT ((0)) FOR [Scale]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationship_EntityRelationshipID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_EntityRelationship_EntityRelationshipID]  DEFAULT (newid()) FOR [RelationshipID]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationship_IsNullable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_EntityRelationship_IsNullable]  DEFAULT ((0)) FOR [IsNullable]
GO
/****** Object:  Default [DF_tblEntities_Relationship_Length]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_Relationship_Length]  DEFAULT ((1)) FOR [ItemsMin]
GO
/****** Object:  Default [DF_tblEntities_Relationship_ItemsMin1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_Relationship_ItemsMin1]  DEFAULT ((1)) FOR [ItemsMax]
GO
/****** Object:  Default [DF_tblEntities_Relationship_ItemsMin1_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_Relationship_ItemsMin1_1]  DEFAULT ((1)) FOR [ReferencedItemsMin]
GO
/****** Object:  Default [DF_tblEntities_Relationship_ItemsMax1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_Relationship_ItemsMax1]  DEFAULT ((1)) FOR [ReferencedItemsMax]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationship_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship] ADD  CONSTRAINT [DF_tblEntities_EntityRelationship_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_StateModel_EntityStateID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateModel] ADD  CONSTRAINT [DF_tblEntities_StateModel_EntityStateID]  DEFAULT (newid()) FOR [StateModelID]
GO
/****** Object:  Default [DF_tblEntities_StateModel_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateModel] ADD  CONSTRAINT [DF_tblEntities_StateModel_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlPropertyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlPropertyID]  DEFAULT (newid()) FOR [SqlExtendedPropertyID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlDatabaseID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlDatabaseID]  DEFAULT (newid()) FOR [SqlDatabaseID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlTableID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlTableID]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlColumnID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlColumnID]  DEFAULT (newid()) FOR [SqlColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlIndexID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlIndexID]  DEFAULT (newid()) FOR [SqlIndexID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlExtendedProperty_SqlForeignKeyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlExtendedProperty_SqlForeignKeyID]  DEFAULT (newid()) FOR [SqlForeignKeyID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlIndexedColumn_SqlIndexID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndexedColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlIndexedColumn_SqlIndexID]  DEFAULT (newid()) FOR [SqlIndexedColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlIndexedColumn_SqlIndexID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndexedColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlIndexedColumn_SqlIndexID_1]  DEFAULT (newid()) FOR [SqlIndexID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlForeignKeyColumn_SqlForeignKeyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKeyColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlForeignKeyColumn_SqlForeignKeyID]  DEFAULT (newid()) FOR [SqlForeignKeyColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlForeignKeyColumn_SqlForeignKeyID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKeyColumn] ADD  CONSTRAINT [DF_tblSpecifications_SqlForeignKeyColumn_SqlForeignKeyID_1]  DEFAULT (newid()) FOR [SqlForeignKeyID]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStep_WorkflowStepID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Step] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStep_WorkflowStepID]  DEFAULT (newid()) FOR [StepID]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStep_PropertyOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Step] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStep_PropertyOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblWorkflows_Step_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Step] ADD  CONSTRAINT [DF_tblWorkflows_Step_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStageTransition_WorkflowStageTransitionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StageTransition] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStageTransition_WorkflowStageTransitionID]  DEFAULT (newid()) FOR [StageTransitionID]
GO
/****** Object:  Default [DF_tblWorkflows_StageTransition_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StageTransition] ADD  CONSTRAINT [DF_tblWorkflows_StageTransition_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblWorkflows_WorkflowStepTransition_WorkflowStepTransitionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StepTransition] ADD  CONSTRAINT [DF_tblWorkflows_WorkflowStepTransition_WorkflowStepTransitionID]  DEFAULT (newid()) FOR [StepTransitionID]
GO
/****** Object:  Default [DF_tblWorkflows_StepTransition_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StepTransition] ADD  CONSTRAINT [DF_tblWorkflows_StepTransition_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlForeignKeyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlForeignKeyID]  DEFAULT (newid()) FOR [SqlPropertyID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlDatabaseID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlDatabaseID]  DEFAULT (newid()) FOR [SqlDatabaseID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlTableID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlTableID]  DEFAULT (newid()) FOR [SqlTableID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlColumnID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlColumnID]  DEFAULT (newid()) FOR [SqlColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlColumnID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlColumnID1]  DEFAULT (newid()) FOR [SqlIndexID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlIndexColumnID2]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlIndexColumnID2]  DEFAULT (newid()) FOR [SqlIndexedColumnID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlIndexColumnID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlIndexColumnID1]  DEFAULT (newid()) FOR [SqlForeignKeyID]
GO
/****** Object:  Default [DF_tblSpecifications_SqlProperty_SqlIndexID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] ADD  CONSTRAINT [DF_tblSpecifications_SqlProperty_SqlIndexID1]  DEFAULT (newid()) FOR [SqlForeignKeyColumnID]
GO
/****** Object:  Default [DF_tblEntities_EntityState_WorkflowStepID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_State] ADD  CONSTRAINT [DF_tblEntities_EntityState_WorkflowStepID]  DEFAULT (newid()) FOR [StateID]
GO
/****** Object:  Default [DF_tblEntities_EntityState_StepOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_State] ADD  CONSTRAINT [DF_tblEntities_EntityState_StepOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_State_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_State] ADD  CONSTRAINT [DF_tblEntities_State_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationshipProperty_EntityRelationshipPropertyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] ADD  CONSTRAINT [DF_tblEntities_EntityRelationshipProperty_EntityRelationshipPropertyID]  DEFAULT (newid()) FOR [RelationshipPropertyID]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationshipProperty_PropertyOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] ADD  CONSTRAINT [DF_tblEntities_EntityRelationshipProperty_PropertyOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_EntityRelationshipProperty_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] ADD  CONSTRAINT [DF_tblEntities_EntityRelationshipProperty_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_PropertyRelationship_PropertyRelationshipID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyRelationship] ADD  CONSTRAINT [DF_tblEntities_PropertyRelationship_PropertyRelationshipID]  DEFAULT (newid()) FOR [PropertyRelationshipID]
GO
/****** Object:  Default [DF_tblEntities_PropertyRelationship_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyRelationship] ADD  CONSTRAINT [DF_tblEntities_PropertyRelationship_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_PropertyRelationship_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyRelationship] ADD  CONSTRAINT [DF_tblEntities_PropertyRelationship_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_Parameter_Order_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Parameter] ADD  CONSTRAINT [DF_tblEntities_Parameter_Order_1]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_Parameter_IsAutoUpdated_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Parameter] ADD  CONSTRAINT [DF_tblEntities_Parameter_IsAutoUpdated_1]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_MethodRelationship_MethodRelationshipID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_MethodRelationship] ADD  CONSTRAINT [DF_tblEntities_MethodRelationship_MethodRelationshipID]  DEFAULT (newid()) FOR [MethodRelationshipID]
GO
/****** Object:  Default [DF_tblEntities_MethodRelationship_MethodRelationshipOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_MethodRelationship] ADD  CONSTRAINT [DF_tblEntities_MethodRelationship_MethodRelationshipOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_MethodRelationship_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_MethodRelationship] ADD  CONSTRAINT [DF_tblEntities_MethodRelationship_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_EntityIndexProperty_EntityIndexPropertyID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_IndexProperty] ADD  CONSTRAINT [DF_tblEntities_EntityIndexProperty_EntityIndexPropertyID]  DEFAULT (newid()) FOR [IndexPropertyID]
GO
/****** Object:  Default [DF_tblEntities_EntityIndexProperty_PropertyOrder]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_IndexProperty] ADD  CONSTRAINT [DF_tblEntities_EntityIndexProperty_PropertyOrder]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblEntities_EntityIndexProperty_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_IndexProperty] ADD  CONSTRAINT [DF_tblEntities_EntityIndexProperty_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblInterpreter_Property_EnumerationID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblInterpreter_Property_EnumerationID]  DEFAULT (newid()) FOR [ModelPropertyID]
GO
/****** Object:  Default [DF_tblModels_ModelProperty_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblModels_ModelProperty_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblInterpreter_Property_ObjectID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblInterpreter_Property_ObjectID]  DEFAULT (newid()) FOR [ModelObjectID]
GO
/****** Object:  Default [DF_tblInterpreter_Property_ObjectID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblInterpreter_Property_ObjectID1]  DEFAULT (newid()) FOR [DefinedByModelObjectID]
GO
/****** Object:  Default [DF_tblInterpreter_Property_EnumerationID_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblInterpreter_Property_EnumerationID_1]  DEFAULT (newid()) FOR [DefinedByEnumerationID]
GO
/****** Object:  Default [DF_tblModels_ModelProperty_DefinedByEnumerationID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblModels_ModelProperty_DefinedByEnumerationID1]  DEFAULT (newid()) FOR [DefinedByValueID]
GO
/****** Object:  Default [DF_tblModels_ModelProperty_IsAutoUpdated1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblModels_ModelProperty_IsAutoUpdated1]  DEFAULT ((0)) FOR [IsCollection]
GO
/****** Object:  Default [DF_tblModels_ModelProperty_IsAutoUpdated1_1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblModels_ModelProperty_IsAutoUpdated1_1]  DEFAULT ((0)) FOR [IsDisplayProperty]
GO
/****** Object:  Default [DF_tblInterpreter_ModelProperty_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty] ADD  CONSTRAINT [DF_tblInterpreter_ModelProperty_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblModels_PropertyInstance_ObjectInstanceID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance] ADD  CONSTRAINT [DF_tblModels_PropertyInstance_ObjectInstanceID]  DEFAULT (newid()) FOR [PropertyInstanceID]
GO
/****** Object:  Default [DF_tblModels_PropertyInstance_ModelObjectID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance] ADD  CONSTRAINT [DF_tblModels_PropertyInstance_ModelObjectID]  DEFAULT (newid()) FOR [ModelPropertyID]
GO
/****** Object:  Default [DF_tblModels_PropertyInstance_ModelPropertyID1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance] ADD  CONSTRAINT [DF_tblModels_PropertyInstance_ModelPropertyID1]  DEFAULT (newid()) FOR [ObjectInstanceID]
GO
/****** Object:  Default [DF_tblModels_PropertyInstance_Order]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance] ADD  CONSTRAINT [DF_tblModels_PropertyInstance_Order]  DEFAULT ((0)) FOR [Order]
GO
/****** Object:  Default [DF_tblModels_PropertyInstance_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance] ADD  CONSTRAINT [DF_tblModels_PropertyInstance_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  Default [DF_tblEntities_EntityStateTransition_WorkflowStepTransitionID]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateTransition] ADD  CONSTRAINT [DF_tblEntities_EntityStateTransition_WorkflowStepTransitionID]  DEFAULT (newid()) FOR [StateTransitionID]
GO
/****** Object:  Default [DF_tblEntities_StateTransition_IsAutoUpdated]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateTransition] ADD  CONSTRAINT [DF_tblEntities_StateTransition_IsAutoUpdated]  DEFAULT ((0)) FOR [IsAutoUpdated]
GO
/****** Object:  ForeignKey [FK_tblSolutions_PropertyBase_tblSolutions_Solution]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_PropertyBase]  WITH CHECK ADD  CONSTRAINT [FK_tblSolutions_PropertyBase_tblSolutions_Solution] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblSolutions_PropertyBase] CHECK CONSTRAINT [FK_tblSolutions_PropertyBase_tblSolutions_Solution]
GO
/****** Object:  ForeignKey [FK_tblProducts_Assembly_tblProducts_Product]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Project]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_Assembly_tblProducts_Product] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblSolutions_Project] CHECK CONSTRAINT [FK_tblProducts_Assembly_tblProducts_Product]
GO
/****** Object:  ForeignKey [FK_tblProducts_Feature_tblProducts_Product]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_Feature]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_Feature_tblProducts_Product] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblSolutions_Feature] CHECK CONSTRAINT [FK_tblProducts_Feature_tblProducts_Product]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Template_tblSolutions_Solution]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_Template]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Template_tblSolutions_Solution] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblInterpreter_Template] CHECK CONSTRAINT [FK_tblInterpreter_Template_tblSolutions_Solution]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Model_tblSolutions_Solution]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Model]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Model_tblSolutions_Solution] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblModels_Model] CHECK CONSTRAINT [FK_tblInterpreter_Model_tblSolutions_Solution]
GO
/****** Object:  ForeignKey [FK_tblDiagrams_Diagram_tblSolutions_Solution]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_Diagram]  WITH CHECK ADD  CONSTRAINT [FK_tblDiagrams_Diagram_tblSolutions_Solution] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblDiagrams_Diagram] CHECK CONSTRAINT [FK_tblDiagrams_Diagram_tblSolutions_Solution]
GO
/****** Object:  ForeignKey [FK_tblProducts_SpecificationSource_tblProducts_Product]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_SpecificationSource]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_SpecificationSource_tblProducts_Product] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblSolutions_SpecificationSource] CHECK CONSTRAINT [FK_tblProducts_SpecificationSource_tblProducts_Product]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_XmlNode_tblSpecifications_XmlDocument]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlNode]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_XmlNode_tblSpecifications_XmlDocument] FOREIGN KEY([XmlDocumentID])
REFERENCES [dbo].[tblSpecifications_XmlDocument] ([XmlDocumentID])
GO
ALTER TABLE [dbo].[tblSpecifications_XmlNode] CHECK CONSTRAINT [FK_tblSpecifications_XmlNode_tblSpecifications_XmlDocument]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlTable_tblSpecifications_SqlDatabase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlTable]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlTable_tblSpecifications_SqlDatabase] FOREIGN KEY([SqlDatabaseID])
REFERENCES [dbo].[tblSpecifications_SqlDatabase] ([SqlDatabaseID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlTable] CHECK CONSTRAINT [FK_tblSpecifications_SqlTable_tblSpecifications_SqlDatabase]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_Workflow_tblProducts_Product]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Workflow]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_Workflow_tblProducts_Product] FOREIGN KEY([SolutionID])
REFERENCES [dbo].[tblSolutions_Solution] ([SolutionID])
GO
ALTER TABLE [dbo].[tblWorkflows_Workflow] CHECK CONSTRAINT [FK_tblWorkflows_Workflow_tblProducts_Product]
GO
/****** Object:  ForeignKey [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[trelSolutions_ProjectReference]  WITH CHECK ADD  CONSTRAINT [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[tblSolutions_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[trelSolutions_ProjectReference] CHECK CONSTRAINT [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly]
GO
/****** Object:  ForeignKey [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[trelSolutions_ProjectReference]  WITH CHECK ADD  CONSTRAINT [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly1] FOREIGN KEY([ReferencedProjectID])
REFERENCES [dbo].[tblSolutions_Project] ([ProjectID])
GO
ALTER TABLE [dbo].[trelSolutions_ProjectReference] CHECK CONSTRAINT [FK_trelSolutions_AssemblyReference_tblSolutions_Assembly1]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStage_tblWorkflows_Workflow]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Stage]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStage_tblWorkflows_Workflow] FOREIGN KEY([WorkflowID])
REFERENCES [dbo].[tblWorkflows_Workflow] ([WorkflowID])
GO
ALTER TABLE [dbo].[tblWorkflows_Stage] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStage_tblWorkflows_Workflow]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlIndex_tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndex]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlIndex_tblSpecifications_SqlTable] FOREIGN KEY([SqlTableID])
REFERENCES [dbo].[tblSpecifications_SqlTable] ([SqlTableID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlIndex] CHECK CONSTRAINT [FK_tblSpecifications_SqlIndex_tblSpecifications_SqlTable]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlDocument]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlDocument] FOREIGN KEY([XmlDocumentID])
REFERENCES [dbo].[tblSpecifications_XmlDocument] ([XmlDocumentID])
GO
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute] CHECK CONSTRAINT [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlDocument]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlNode]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlNode] FOREIGN KEY([XmlNodeID])
REFERENCES [dbo].[tblSpecifications_XmlNode] ([XmlNodeID])
GO
ALTER TABLE [dbo].[tblSpecifications_XmlAttribute] CHECK CONSTRAINT [FK_tblSpecifications_XmlAttribute_tblSpecifications_XmlNode]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlColumn_tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlColumn]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlColumn_tblSpecifications_SqlTable] FOREIGN KEY([SqlTableID])
REFERENCES [dbo].[tblSpecifications_SqlTable] ([SqlTableID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlColumn] CHECK CONSTRAINT [FK_tblSpecifications_SqlColumn_tblSpecifications_SqlTable]
GO
/****** Object:  ForeignKey [FK_tblProducts_XmlSpecificationSource_tblProducts_SpecificationSource]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_XmlSource]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_XmlSpecificationSource_tblProducts_SpecificationSource] FOREIGN KEY([SpecificationSourceID])
REFERENCES [dbo].[tblSolutions_SpecificationSource] ([SpecificationSourceID])
GO
ALTER TABLE [dbo].[tblSolutions_XmlSource] CHECK CONSTRAINT [FK_tblProducts_XmlSpecificationSource_tblProducts_SpecificationSource]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlForeignKey_tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKey]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlForeignKey_tblSpecifications_SqlTable] FOREIGN KEY([SqlTableID])
REFERENCES [dbo].[tblSpecifications_SqlTable] ([SqlTableID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKey] CHECK CONSTRAINT [FK_tblSpecifications_SqlForeignKey_tblSpecifications_SqlTable]
GO
/****** Object:  ForeignKey [FK_tblEntities_Entity_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Entity_tblEntities_Entity] FOREIGN KEY([BaseEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Entity] CHECK CONSTRAINT [FK_tblEntities_Entity_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Entity_tblProducts_Feature]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Entity_tblProducts_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[tblSolutions_Feature] ([FeatureID])
GO
ALTER TABLE [dbo].[tblEntities_Entity] CHECK CONSTRAINT [FK_tblEntities_Entity_tblProducts_Feature]
GO
/****** Object:  ForeignKey [FK_tblEntities_Entity_tlkpConventions_EntityType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Entity_tlkpConventions_EntityType] FOREIGN KEY([EntityTypeCode])
REFERENCES [dbo].[tlkpConfig_EntityType] ([EntityTypeCode])
GO
ALTER TABLE [dbo].[tblEntities_Entity] CHECK CONSTRAINT [FK_tblEntities_Entity_tlkpConventions_EntityType]
GO
/****** Object:  ForeignKey [FK_tblEntities_Entity_tlkpConventions_IdentifierType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Entity]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Entity_tlkpConventions_IdentifierType] FOREIGN KEY([IdentifierTypeCode])
REFERENCES [dbo].[tlkpConfig_IdentifierType] ([IdentifierTypeCode])
GO
ALTER TABLE [dbo].[tblEntities_Entity] CHECK CONSTRAINT [FK_tblEntities_Entity_tlkpConventions_IdentifierType]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Enumeration_tblInterpreter_Model]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Enumeration]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Enumeration_tblInterpreter_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[tblModels_Model] ([ModelID])
GO
ALTER TABLE [dbo].[tblModels_Enumeration] CHECK CONSTRAINT [FK_tblInterpreter_Enumeration_tblInterpreter_Model]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_SpecTemplate_tblInterpreter_Template]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_SpecTemplate]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_SpecTemplate_tblInterpreter_Template] FOREIGN KEY([TemplateID])
REFERENCES [dbo].[tblInterpreter_Template] ([TemplateID])
GO
ALTER TABLE [dbo].[tblInterpreter_SpecTemplate] CHECK CONSTRAINT [FK_tblInterpreter_SpecTemplate_tblInterpreter_Template]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Object_tblInterpreter_Model]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Object_tblInterpreter_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[tblModels_Model] ([ModelID])
GO
ALTER TABLE [dbo].[tblModels_ModelObject] CHECK CONSTRAINT [FK_tblInterpreter_Object_tblInterpreter_Model]
GO
/****** Object:  ForeignKey [FK_tblModels_ModelObject_tblModels_ModelObject]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelObject]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_ModelObject_tblModels_ModelObject] FOREIGN KEY([ParentModelObjectID])
REFERENCES [dbo].[tblModels_ModelObject] ([ModelObjectID])
GO
ALTER TABLE [dbo].[tblModels_ModelObject] CHECK CONSTRAINT [FK_tblModels_ModelObject_tblModels_ModelObject]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_CodeTemplate_tblInterpreter_Template]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblInterpreter_CodeTemplate]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_CodeTemplate_tblInterpreter_Template] FOREIGN KEY([TemplateID])
REFERENCES [dbo].[tblInterpreter_Template] ([TemplateID])
GO
ALTER TABLE [dbo].[tblInterpreter_CodeTemplate] CHECK CONSTRAINT [FK_tblInterpreter_CodeTemplate_tblInterpreter_Template]
GO
/****** Object:  ForeignKey [FK_tblProducts_DatabaseSpecificationSource_tblProducts_SpecificationSource]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_DatabaseSource]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_DatabaseSpecificationSource_tblProducts_SpecificationSource] FOREIGN KEY([SpecificationSourceID])
REFERENCES [dbo].[tblSolutions_SpecificationSource] ([SpecificationSourceID])
GO
ALTER TABLE [dbo].[tblSolutions_DatabaseSource] CHECK CONSTRAINT [FK_tblProducts_DatabaseSpecificationSource_tblProducts_SpecificationSource]
GO
/****** Object:  ForeignKey [FK_tblSolutions_DatabaseSource_tlkpConfig_DatabaseType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_DatabaseSource]  WITH CHECK ADD  CONSTRAINT [FK_tblSolutions_DatabaseSource_tlkpConfig_DatabaseType] FOREIGN KEY([DatabaseTypeCode])
REFERENCES [dbo].[tlkpConfig_DatabaseType] ([DatabaseTypeCode])
GO
ALTER TABLE [dbo].[tblSolutions_DatabaseSource] CHECK CONSTRAINT [FK_tblSolutions_DatabaseSource_tlkpConfig_DatabaseType]
GO
/****** Object:  ForeignKey [FK_tblSolutions_AuditProperty_tblConfig_DataType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSolutions_AuditProperty_tblConfig_DataType] FOREIGN KEY([DataTypeCode])
REFERENCES [dbo].[tblConfig_DataType] ([DataTypeCode])
GO
ALTER TABLE [dbo].[tblSolutions_AuditProperty] CHECK CONSTRAINT [FK_tblSolutions_AuditProperty_tblConfig_DataType]
GO
/****** Object:  ForeignKey [FK_tblSolutions_AuditProperty_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSolutions_AuditProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSolutions_AuditProperty_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblSolutions_AuditProperty] CHECK CONSTRAINT [FK_tblSolutions_AuditProperty_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Value_tblInterpreter_Enumeration]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_Value]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Value_tblInterpreter_Enumeration] FOREIGN KEY([EnumerationID])
REFERENCES [dbo].[tblModels_Enumeration] ([EnumerationID])
GO
ALTER TABLE [dbo].[tblModels_Value] CHECK CONSTRAINT [FK_tblInterpreter_Value_tblInterpreter_Enumeration]
GO
/****** Object:  ForeignKey [FK_tblModels_ObjectInstance_tblModels_ModelObject]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_ObjectInstance_tblModels_ModelObject] FOREIGN KEY([ModelObjectID])
REFERENCES [dbo].[tblModels_ModelObject] ([ModelObjectID])
GO
ALTER TABLE [dbo].[tblModels_ObjectInstance] CHECK CONSTRAINT [FK_tblModels_ObjectInstance_tblModels_ModelObject]
GO
/****** Object:  ForeignKey [FK_tblModels_ObjectInstance_tblModels_ObjectInstance]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ObjectInstance]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_ObjectInstance_tblModels_ObjectInstance] FOREIGN KEY([ParentObjectInstanceID])
REFERENCES [dbo].[tblModels_ObjectInstance] ([ObjectInstanceID])
GO
ALTER TABLE [dbo].[tblModels_ObjectInstance] CHECK CONSTRAINT [FK_tblModels_ObjectInstance_tblModels_ObjectInstance]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityIndex_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Index]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityIndex_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Index] CHECK CONSTRAINT [FK_tblEntities_EntityIndex_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityReference_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_EntityReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityReference_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_EntityReference] CHECK CONSTRAINT [FK_tblEntities_EntityReference_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityReference_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_EntityReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityReference_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_EntityReference] CHECK CONSTRAINT [FK_tblEntities_EntityReference_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_ReferenceEntityProperty_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_EntityReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_ReferenceEntityProperty_tblEntities_Entity] FOREIGN KEY([ReferencedEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_EntityReference] CHECK CONSTRAINT [FK_tblEntities_ReferenceEntityProperty_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Collection_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Collection]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Collection_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Collection] CHECK CONSTRAINT [FK_tblEntities_Collection_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Collection_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Collection]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Collection_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_Collection] CHECK CONSTRAINT [FK_tblEntities_Collection_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_CollectionEntityProperty_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Collection]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_CollectionEntityProperty_tblEntities_Entity] FOREIGN KEY([ReferencedEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Collection] CHECK CONSTRAINT [FK_tblEntities_CollectionEntityProperty_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblDiagrams_DiagramEntity_tblDiagrams_Diagram]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity]  WITH CHECK ADD  CONSTRAINT [FK_tblDiagrams_DiagramEntity_tblDiagrams_Diagram] FOREIGN KEY([DiagramID])
REFERENCES [dbo].[tblDiagrams_Diagram] ([DiagramID])
GO
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] CHECK CONSTRAINT [FK_tblDiagrams_DiagramEntity_tblDiagrams_Diagram]
GO
/****** Object:  ForeignKey [FK_tblDiagrams_DiagramEntity_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity]  WITH CHECK ADD  CONSTRAINT [FK_tblDiagrams_DiagramEntity_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblDiagrams_DiagramEntity] CHECK CONSTRAINT [FK_tblDiagrams_DiagramEntity_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Method_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Method]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Method_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Method] CHECK CONSTRAINT [FK_tblEntities_Method_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Method_tlkpConventions_MethodType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Method]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Method_tlkpConventions_MethodType] FOREIGN KEY([MethodTypeCode])
REFERENCES [dbo].[tlkpConfig_MethodType] ([MethodTypeCode])
GO
ALTER TABLE [dbo].[tblEntities_Method] CHECK CONSTRAINT [FK_tblEntities_Method_tlkpConventions_MethodType]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityDataProperty_tblConfig_DataType]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityDataProperty_tblConfig_DataType] FOREIGN KEY([DataTypeCode])
REFERENCES [dbo].[tblConfig_DataType] ([DataTypeCode])
GO
ALTER TABLE [dbo].[tblEntities_Property] CHECK CONSTRAINT [FK_tblEntities_EntityDataProperty_tblConfig_DataType]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityDataProperty_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityDataProperty_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Property] CHECK CONSTRAINT [FK_tblEntities_EntityDataProperty_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Property_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Property]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Property_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_Property] CHECK CONSTRAINT [FK_tblEntities_Property_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityRelationship_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityRelationship_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Relationship] CHECK CONSTRAINT [FK_tblEntities_EntityRelationship_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityRelationship_tblEntities_Entity1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Relationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityRelationship_tblEntities_Entity1] FOREIGN KEY([ReferencedEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Relationship] CHECK CONSTRAINT [FK_tblEntities_EntityRelationship_tblEntities_Entity1]
GO
/****** Object:  ForeignKey [FK_tblEntities_StateModel_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateModel]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_StateModel_tblEntities_Entity] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_StateModel] CHECK CONSTRAINT [FK_tblEntities_StateModel_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlColumn]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlColumn] FOREIGN KEY([SqlColumnID])
REFERENCES [dbo].[tblSpecifications_SqlColumn] ([SqlColumnID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlColumn]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlDatabase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlDatabase] FOREIGN KEY([SqlDatabaseID])
REFERENCES [dbo].[tblSpecifications_SqlDatabase] ([SqlDatabaseID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlDatabase]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlForeignKey]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlForeignKey] FOREIGN KEY([SqlForeignKeyID])
REFERENCES [dbo].[tblSpecifications_SqlForeignKey] ([SqlForeignKeyID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlForeignKey]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlIndex] FOREIGN KEY([SqlIndexID])
REFERENCES [dbo].[tblSpecifications_SqlIndex] ([SqlIndexID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlIndex]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlTable] FOREIGN KEY([SqlTableID])
REFERENCES [dbo].[tblSpecifications_SqlTable] ([SqlTableID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlExtendedProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlExtendedProperty_tblSpecifications_SqlTable]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlIndexedColumn_tblSpecifications_SqlIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlIndexedColumn]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlIndexedColumn_tblSpecifications_SqlIndex] FOREIGN KEY([SqlIndexID])
REFERENCES [dbo].[tblSpecifications_SqlIndex] ([SqlIndexID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlIndexedColumn] CHECK CONSTRAINT [FK_tblSpecifications_SqlIndexedColumn_tblSpecifications_SqlIndex]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlForeignKeyColumn_tblSpecifications_SqlForeignKey]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKeyColumn]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlForeignKeyColumn_tblSpecifications_SqlForeignKey] FOREIGN KEY([SqlForeignKeyID])
REFERENCES [dbo].[tblSpecifications_SqlForeignKey] ([SqlForeignKeyID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlForeignKeyColumn] CHECK CONSTRAINT [FK_tblSpecifications_SqlForeignKeyColumn_tblSpecifications_SqlForeignKey]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStep_tblWorkflows_WorkflowStage]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_Step]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStep_tblWorkflows_WorkflowStage] FOREIGN KEY([StageID])
REFERENCES [dbo].[tblWorkflows_Stage] ([StageID])
GO
ALTER TABLE [dbo].[tblWorkflows_Step] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStep_tblWorkflows_WorkflowStage]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StageTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage] FOREIGN KEY([FromStageID])
REFERENCES [dbo].[tblWorkflows_Stage] ([StageID])
GO
ALTER TABLE [dbo].[tblWorkflows_StageTransition] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StageTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage1] FOREIGN KEY([ToStageID])
REFERENCES [dbo].[tblWorkflows_Stage] ([StageID])
GO
ALTER TABLE [dbo].[tblWorkflows_StageTransition] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStageTransition_tblWorkflows_WorkflowStage1]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StepTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep] FOREIGN KEY([FromStepID])
REFERENCES [dbo].[tblWorkflows_Step] ([StepID])
GO
ALTER TABLE [dbo].[tblWorkflows_StepTransition] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep]
GO
/****** Object:  ForeignKey [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblWorkflows_StepTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep1] FOREIGN KEY([ToStepID])
REFERENCES [dbo].[tblWorkflows_Step] ([StepID])
GO
ALTER TABLE [dbo].[tblWorkflows_StepTransition] CHECK CONSTRAINT [FK_tblWorkflows_WorkflowStepTransition_tblWorkflows_WorkflowStep1]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlColumn]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlColumn] FOREIGN KEY([SqlColumnID])
REFERENCES [dbo].[tblSpecifications_SqlColumn] ([SqlColumnID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlColumn]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlDatabase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlDatabase] FOREIGN KEY([SqlDatabaseID])
REFERENCES [dbo].[tblSpecifications_SqlDatabase] ([SqlDatabaseID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlDatabase]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKey]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKey] FOREIGN KEY([SqlForeignKeyID])
REFERENCES [dbo].[tblSpecifications_SqlForeignKey] ([SqlForeignKeyID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKey]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKeyColumn]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKeyColumn] FOREIGN KEY([SqlForeignKeyColumnID])
REFERENCES [dbo].[tblSpecifications_SqlForeignKeyColumn] ([SqlForeignKeyColumnID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlForeignKeyColumn]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndex] FOREIGN KEY([SqlIndexID])
REFERENCES [dbo].[tblSpecifications_SqlIndex] ([SqlIndexID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndex]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndexedColumn]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndexedColumn] FOREIGN KEY([SqlIndexedColumnID])
REFERENCES [dbo].[tblSpecifications_SqlIndexedColumn] ([SqlIndexedColumnID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlIndexedColumn]
GO
/****** Object:  ForeignKey [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlTable]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblSpecifications_SqlProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlTable] FOREIGN KEY([SqlTableID])
REFERENCES [dbo].[tblSpecifications_SqlTable] ([SqlTableID])
GO
ALTER TABLE [dbo].[tblSpecifications_SqlProperty] CHECK CONSTRAINT [FK_tblSpecifications_SqlProperty_tblSpecifications_SqlTable]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityState_tblEntities_StateModel]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_State]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityState_tblEntities_StateModel] FOREIGN KEY([StateModelID])
REFERENCES [dbo].[tblEntities_StateModel] ([StateModelID])
GO
ALTER TABLE [dbo].[tblEntities_State] CHECK CONSTRAINT [FK_tblEntities_EntityState_tblEntities_StateModel]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblEntities_Property] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] CHECK CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty1] FOREIGN KEY([ReferencedPropertyID])
REFERENCES [dbo].[tblEntities_Property] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] CHECK CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityDataProperty1]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityRelationship]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_RelationshipProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityRelationship] FOREIGN KEY([RelationshipID])
REFERENCES [dbo].[tblEntities_Relationship] ([RelationshipID])
GO
ALTER TABLE [dbo].[tblEntities_RelationshipProperty] CHECK CONSTRAINT [FK_tblEntities_EntityRelationshipProperty_tblEntities_EntityRelationship]
GO
/****** Object:  ForeignKey [FK_tblEntities_PropertyRelationship_tblEntities_EntityRelationship]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyRelationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_PropertyRelationship_tblEntities_EntityRelationship] FOREIGN KEY([RelationshipID])
REFERENCES [dbo].[tblEntities_Relationship] ([RelationshipID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyRelationship] CHECK CONSTRAINT [FK_tblEntities_PropertyRelationship_tblEntities_EntityRelationship]
GO
/****** Object:  ForeignKey [FK_tblEntities_PropertyRelationship_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyRelationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_PropertyRelationship_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyRelationship] CHECK CONSTRAINT [FK_tblEntities_PropertyRelationship_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_DerivedEntityDataProperty_tblEntities_EntityDataProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_DerivedEntityDataProperty_tblEntities_EntityDataProperty] FOREIGN KEY([ReferencedPropertyID])
REFERENCES [dbo].[tblEntities_Property] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyReference] CHECK CONSTRAINT [FK_tblEntities_DerivedEntityDataProperty_tblEntities_EntityDataProperty]
GO
/****** Object:  ForeignKey [FK_tblEntities_PropertyReference_tblEntities_Entity1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_PropertyReference_tblEntities_Entity1] FOREIGN KEY([EntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyReference] CHECK CONSTRAINT [FK_tblEntities_PropertyReference_tblEntities_Entity1]
GO
/****** Object:  ForeignKey [FK_tblEntities_PropertyReference_tblEntities_Entity2]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_PropertyReference_tblEntities_Entity2] FOREIGN KEY([ReferencedEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyReference] CHECK CONSTRAINT [FK_tblEntities_PropertyReference_tblEntities_Entity2]
GO
/****** Object:  ForeignKey [FK_tblEntities_PropertyReference_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_PropertyReference]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_PropertyReference_tblSolutions_PropertyBase] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_PropertyReference] CHECK CONSTRAINT [FK_tblEntities_PropertyReference_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_MethodParameter_tblEntities_Method]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Parameter]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_MethodParameter_tblEntities_Method] FOREIGN KEY([MethodID])
REFERENCES [dbo].[tblEntities_Method] ([MethodID])
GO
ALTER TABLE [dbo].[tblEntities_Parameter] CHECK CONSTRAINT [FK_tblEntities_MethodParameter_tblEntities_Method]
GO
/****** Object:  ForeignKey [FK_tblEntities_Parameter_tblEntities_Entity]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Parameter]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Parameter_tblEntities_Entity] FOREIGN KEY([ReferencedEntityID])
REFERENCES [dbo].[tblEntities_Entity] ([EntityID])
GO
ALTER TABLE [dbo].[tblEntities_Parameter] CHECK CONSTRAINT [FK_tblEntities_Parameter_tblEntities_Entity]
GO
/****** Object:  ForeignKey [FK_tblEntities_Parameter_tblSolutions_PropertyBase]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_Parameter]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_Parameter_tblSolutions_PropertyBase] FOREIGN KEY([ReferencedPropertyID])
REFERENCES [dbo].[tblSolutions_PropertyBase] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_Parameter] CHECK CONSTRAINT [FK_tblEntities_Parameter_tblSolutions_PropertyBase]
GO
/****** Object:  ForeignKey [FK_tblEntities_MethodRelationship_tblEntities_EntityRelationship]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_MethodRelationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_MethodRelationship_tblEntities_EntityRelationship] FOREIGN KEY([RelationshipID])
REFERENCES [dbo].[tblEntities_Relationship] ([RelationshipID])
GO
ALTER TABLE [dbo].[tblEntities_MethodRelationship] CHECK CONSTRAINT [FK_tblEntities_MethodRelationship_tblEntities_EntityRelationship]
GO
/****** Object:  ForeignKey [FK_tblEntities_MethodRelationship_tblEntities_Method]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_MethodRelationship]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_MethodRelationship_tblEntities_Method] FOREIGN KEY([MethodID])
REFERENCES [dbo].[tblEntities_Method] ([MethodID])
GO
ALTER TABLE [dbo].[tblEntities_MethodRelationship] CHECK CONSTRAINT [FK_tblEntities_MethodRelationship_tblEntities_Method]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityIndexProperty_tblEntities_EntityDataProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_IndexProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityIndexProperty_tblEntities_EntityDataProperty] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[tblEntities_Property] ([PropertyID])
GO
ALTER TABLE [dbo].[tblEntities_IndexProperty] CHECK CONSTRAINT [FK_tblEntities_EntityIndexProperty_tblEntities_EntityDataProperty]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityIndexProperty_tblEntities_EntityIndex]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_IndexProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityIndexProperty_tblEntities_EntityIndex] FOREIGN KEY([IndexID])
REFERENCES [dbo].[tblEntities_Index] ([IndexID])
GO
ALTER TABLE [dbo].[tblEntities_IndexProperty] CHECK CONSTRAINT [FK_tblEntities_EntityIndexProperty_tblEntities_EntityIndex]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Property_tblInterpreter_Enumeration]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Property_tblInterpreter_Enumeration] FOREIGN KEY([DefinedByEnumerationID])
REFERENCES [dbo].[tblModels_Enumeration] ([EnumerationID])
GO
ALTER TABLE [dbo].[tblModels_ModelProperty] CHECK CONSTRAINT [FK_tblInterpreter_Property_tblInterpreter_Enumeration]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_Property_tblInterpreter_Object]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_Property_tblInterpreter_Object] FOREIGN KEY([ModelObjectID])
REFERENCES [dbo].[tblModels_ModelObject] ([ModelObjectID])
GO
ALTER TABLE [dbo].[tblModels_ModelProperty] CHECK CONSTRAINT [FK_tblInterpreter_Property_tblInterpreter_Object]
GO
/****** Object:  ForeignKey [FK_tblInterpreter_PropertyObject_tblInterpreter_Object]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblInterpreter_PropertyObject_tblInterpreter_Object] FOREIGN KEY([DefinedByModelObjectID])
REFERENCES [dbo].[tblModels_ModelObject] ([ModelObjectID])
GO
ALTER TABLE [dbo].[tblModels_ModelProperty] CHECK CONSTRAINT [FK_tblInterpreter_PropertyObject_tblInterpreter_Object]
GO
/****** Object:  ForeignKey [FK_tblModels_ModelProperty_tblModels_Value]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_ModelProperty]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_ModelProperty_tblModels_Value] FOREIGN KEY([DefinedByValueID])
REFERENCES [dbo].[tblModels_Value] ([ValueID])
GO
ALTER TABLE [dbo].[tblModels_ModelProperty] CHECK CONSTRAINT [FK_tblModels_ModelProperty_tblModels_Value]
GO
/****** Object:  ForeignKey [FK_tblModels_PropertyInstance_tblModels_ModelProperty]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_PropertyInstance_tblModels_ModelProperty] FOREIGN KEY([ModelPropertyID])
REFERENCES [dbo].[tblModels_ModelProperty] ([ModelPropertyID])
GO
ALTER TABLE [dbo].[tblModels_PropertyInstance] CHECK CONSTRAINT [FK_tblModels_PropertyInstance_tblModels_ModelProperty]
GO
/****** Object:  ForeignKey [FK_tblModels_PropertyInstance_tblModels_ObjectInstance]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblModels_PropertyInstance]  WITH CHECK ADD  CONSTRAINT [FK_tblModels_PropertyInstance_tblModels_ObjectInstance] FOREIGN KEY([ObjectInstanceID])
REFERENCES [dbo].[tblModels_ObjectInstance] ([ObjectInstanceID])
GO
ALTER TABLE [dbo].[tblModels_PropertyInstance] CHECK CONSTRAINT [FK_tblModels_PropertyInstance_tblModels_ObjectInstance]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityStateTransition_tblEntities_EntityState]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityStateTransition_tblEntities_EntityState] FOREIGN KEY([FromStateID])
REFERENCES [dbo].[tblEntities_State] ([StateID])
GO
ALTER TABLE [dbo].[tblEntities_StateTransition] CHECK CONSTRAINT [FK_tblEntities_EntityStateTransition_tblEntities_EntityState]
GO
/****** Object:  ForeignKey [FK_tblEntities_EntityStateTransition_tblEntities_EntityState1]    Script Date: 09/04/2013 22:36:17 ******/
ALTER TABLE [dbo].[tblEntities_StateTransition]  WITH CHECK ADD  CONSTRAINT [FK_tblEntities_EntityStateTransition_tblEntities_EntityState1] FOREIGN KEY([ToStateID])
REFERENCES [dbo].[tblEntities_State] ([StateID])
GO
ALTER TABLE [dbo].[tblEntities_StateTransition] CHECK CONSTRAINT [FK_tblEntities_EntityStateTransition_tblEntities_EntityState1]
GO
