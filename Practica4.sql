USE [master]
GO
/****** Object:  Database [Restaurante]    Script Date: 04/05/2019 02:00:16 a. m. ******/
CREATE DATABASE [Restaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MILTON\MSSQL\DATA\Restaurante.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Restaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MILTON\MSSQL\DATA\Restaurante_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Restaurante] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurante] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurante] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurante] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Restaurante] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Restaurante]
GO
/****** Object:  Table [dbo].[Afiliacion]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Afiliacion](
	[afiliacion_code] [int] NOT NULL,
	[hospital_des] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Afiliacion] PRIMARY KEY CLUSTERED 
(
	[afiliacion_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[cliente_id] [int] NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[comanda_code] [int] NOT NULL,
	[ticket_code] [int] NOT NULL,
	[pago_code] [int] NOT NULL,
	[reservacion_code] [int] NOT NULL,
	[empleado_id] [int] NOT NULL,
 CONSTRAINT [PK_Comanda] PRIMARY KEY CLUSTERED 
(
	[comanda_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comida]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comida](
	[comida_code] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[comanda_code] [int] NOT NULL,
 CONSTRAINT [PK_Comida] PRIMARY KEY CLUSTERED 
(
	[comida_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[departamento_code] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[departamento_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[empleado_id] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[puesto_code] [int] NOT NULL,
	[afiliacion_code] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Info_Gral]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Info_Gral](
	[info_code] [int] NOT NULL,
	[restaurante] [varchar](50) NOT NULL,
	[ubicacion] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
 CONSTRAINT [PK_Info_Gral] PRIMARY KEY CLUSTERED 
(
	[info_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[mesa_id] [int] NOT NULL,
	[reservacion_code] [int] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[mesa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MetodoPago]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodoPago](
	[metodo_code] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MetodoPago] PRIMARY KEY CLUSTERED 
(
	[metodo_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[pago_code] [int] NOT NULL,
	[metodo_code] [int] NOT NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[pago_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[puesto_code] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[departamento_code] [int] NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[puesto_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[reservacion_code] [int] NOT NULL,
	[cliente_id] [int] NOT NULL,
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[reservacion_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 04/05/2019 02:00:16 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ticket_code] [int] NOT NULL,
	[mandala_code] [int] NOT NULL,
	[reservacion_code] [int] NOT NULL,
	[info_code] [int] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ticket_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Pago] FOREIGN KEY([pago_code])
REFERENCES [dbo].[Pago] ([pago_code])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Pago]
GO
ALTER TABLE [dbo].[Comanda]  WITH CHECK ADD  CONSTRAINT [FK_Comanda_Ticket] FOREIGN KEY([ticket_code])
REFERENCES [dbo].[Ticket] ([ticket_code])
GO
ALTER TABLE [dbo].[Comanda] CHECK CONSTRAINT [FK_Comanda_Ticket]
GO
ALTER TABLE [dbo].[Comida]  WITH CHECK ADD  CONSTRAINT [FK_Comida_Comanda] FOREIGN KEY([comanda_code])
REFERENCES [dbo].[Comanda] ([comanda_code])
GO
ALTER TABLE [dbo].[Comida] CHECK CONSTRAINT [FK_Comida_Comanda]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Afiliacion] FOREIGN KEY([afiliacion_code])
REFERENCES [dbo].[Afiliacion] ([afiliacion_code])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Afiliacion]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([puesto_code])
REFERENCES [dbo].[Puesto] ([puesto_code])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Comanda] FOREIGN KEY([reservacion_code])
REFERENCES [dbo].[Comanda] ([comanda_code])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Comanda]
GO
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Reservacion] FOREIGN KEY([reservacion_code])
REFERENCES [dbo].[Reservacion] ([reservacion_code])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Reservacion]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_MetodoPago] FOREIGN KEY([metodo_code])
REFERENCES [dbo].[MetodoPago] ([metodo_code])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_MetodoPago]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_Puesto_Departamento] FOREIGN KEY([departamento_code])
REFERENCES [dbo].[Departamento] ([departamento_code])
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_Puesto_Departamento]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Cliente] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Cliente] ([cliente_id])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Cliente]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Info_Gral] FOREIGN KEY([info_code])
REFERENCES [dbo].[Info_Gral] ([info_code])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Info_Gral]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Mesa] FOREIGN KEY([reservacion_code])
REFERENCES [dbo].[Mesa] ([mesa_id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Mesa]
GO
USE [master]
GO
ALTER DATABASE [Restaurante] SET  READ_WRITE 
GO
