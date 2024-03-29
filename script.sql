USE [CariHesap]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 23.09.2019 16:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriName] [nvarchar](50) NULL,
	[KategoriAciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 23.09.2019 16:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nvarchar](50) NULL,
	[KullaniciSifre] [nvarchar](50) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 23.09.2019 16:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [nvarchar](50) NULL,
	[MusteriSoyad] [nvarchar](50) NULL,
	[MusteriTel] [nvarchar](50) NULL,
	[MusteriAdres] [nvarchar](max) NULL,
	[KullaniciId] [int] NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 23.09.2019 16:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NULL,
	[UrunId] [int] NULL,
	[KayitTarih] [datetime] NULL,
	[OdenenTutar] [int] NOT NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 23.09.2019 16:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [nvarchar](50) NULL,
	[KategoriId] [int] NULL,
	[AlisFiyati] [int] NOT NULL,
	[SatisFiyati] [int] NOT NULL,
	[UrunStok] [int] NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriId], [KategoriName], [KategoriAciklama]) VALUES (1, N'Kimyevi Maddeler', N'Hammadde ve Türleri')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriName], [KategoriAciklama]) VALUES (3, N'Gıda', N'Yiyecek ve içecek')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([KullaniciId], [KullaniciAd], [KullaniciSifre], [Type]) VALUES (1, N'yonetici', N'123', 1)
INSERT [dbo].[Kullanici] ([KullaniciId], [KullaniciAd], [KullaniciSifre], [Type]) VALUES (2, N'kullanici', N'321', 2)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriTel], [MusteriAdres], [KullaniciId]) VALUES (1, N'Gökçe', N'Tenekeci', N'5399988747', N'dsfsdfsdfsdfds', 1)
INSERT [dbo].[Musteriler] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriTel], [MusteriAdres], [KullaniciId]) VALUES (2, N'rengin', N'atilla', N'5252545845', N'sdfgdsgdfhdfhg', 1)
INSERT [dbo].[Musteriler] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriTel], [MusteriAdres], [KullaniciId]) VALUES (7, N'Zeynep', N'Tenekeci', N'5399988747', N'dsfsdfsdfsdfds', 1)
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
SET IDENTITY_INSERT [dbo].[Satis] ON 

INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (1, 1, 2, CAST(N'2019-09-20T00:00:00.000' AS DateTime), 50)
INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (2, 1, 2, CAST(N'2019-09-20T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (3, 1, 2, CAST(N'2019-09-20T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (1002, 2, 1, CAST(N'2019-09-22T00:00:00.000' AS DateTime), 60)
INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (1004, 1, 6, CAST(N'2019-09-22T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Satis] ([SatisId], [MusteriId], [UrunId], [KayitTarih], [OdenenTutar]) VALUES (1005, 1, 6, CAST(N'2019-09-23T00:00:00.000' AS DateTime), 600)
SET IDENTITY_INSERT [dbo].[Satis] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunId], [UrunAd], [KategoriId], [AlisFiyati], [SatisFiyati], [UrunStok], [Aciklama]) VALUES (1, N'domestos', 1, 20, 30, 8, N'domestosla hayat güzel...')
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [KategoriId], [AlisFiyati], [SatisFiyati], [UrunStok], [Aciklama]) VALUES (2, N'prill', 1, 5, 10, 0, N'her yer prill prill')
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [KategoriId], [AlisFiyati], [SatisFiyati], [UrunStok], [Aciklama]) VALUES (6, N'canga', 3, 2, 3, 200, N'eti canga dağınık sevenlere')
SET IDENTITY_INSERT [dbo].[Urun] OFF
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Kullanici] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanici] ([KullaniciId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Kullanici]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([MusteriId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteriler]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Urun] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urun] ([UrunId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Urun]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([KategoriId])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
