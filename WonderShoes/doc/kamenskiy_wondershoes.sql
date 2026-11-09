-- ПР3. Выгрузка схемы и данных до добавления служебных пользователей.
USE [master];
GO
IF DB_ID(N'kamenskiy_wondershoes') IS NOT NULL THROW 51000, N'База уже существует. Выберите новое имя базы для восстановления.', 1;
GO
CREATE DATABASE [kamenskiy_wondershoes] COLLATE Cyrillic_General_CI_AS;
GO
USE [kamenskiy_wondershoes];
GO
SET XACT_ABORT ON;
BEGIN TRANSACTION;
CREATE TABLE dbo.[User] (
    [IdUser] int IDENTITY(1,1) NOT NULL,
    [LastName] nvarchar(50) NULL,
    [FirstName] nvarchar(50) NULL,
    [PatronymicName] nvarchar(50) NULL,
    [Username] nvarchar(50) NULL,
    [Role] nvarchar(50) NULL,
    CONSTRAINT [PK_User] PRIMARY KEY ([IdUser])
);
SET IDENTITY_INSERT dbo.[User] ON;
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (1,N'Иванов',N'Иван',N'Сергеевич',N'isivanov',N'Администратор');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (2,N'Петров',N'Пeтр',N'Алексеевич',N'papetrov',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (3,N'Сидорова',N'Анна',N'Дмитриевна',N'asidorova',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (4,N'Кузнецова',N'Екатерина',N'Андреевна',N'ekuznetsova',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (5,N'Смирнов',N'Дмитрий',N'Владимирович',N'dsmirnov',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (6,N'Попов',N'Алексей',N'Николаевич',N'apopov',N'Администратор');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (7,N'Васильева',N'Ольга',N'Игоревна',N'ovasileva',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (8,N'Соколов',N'Павел',N'Викторович',N'psokolov',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (9,N'Михайлова',N'Татьяна',N'Юрьевна',N'tmikhailova',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (10,N'Новикова',N'Наталья',N'Сергеевна',N'nnovikova',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (11,N'Фёдоров',N'Андрей',N'Максимович',N'afedorov',N'Администратор');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (12,N'Морозов',N'Сергей',N'Павлович',N'smorozov',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (13,N'Волкова',N'Юлия',N'Александровна',N'jvolkova',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (14,N'Алексеев',N'Артём',N'Евгеньевич',N'aalekseev',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (15,N'Лебедева',N'Ирина',N'Владимировна',N'ilebedeva',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (16,N'Егоров',N'Никита',N'Денисович',N'negorov',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (17,N'Павлова',N'Елена',N'Петровна',N'epavlova',N'Авторизованный пользователь');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (18,N'Козлов',N'Роман',N'Олегович',N'rkozlov',N'Администратор');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (19,N'Степанова',N'Виктория',N'Романовна',N'vstepanova',N'Менеджер');
INSERT INTO dbo.[User] ([IdUser],[LastName],[FirstName],[PatronymicName],[Username],[Role]) VALUES (20,N'Николаев',N'Владимир',N'Иванович',N'vnikolaev',N'Авторизованный пользователь');
SET IDENTITY_INSERT dbo.[User] OFF;
CREATE TABLE dbo.[Manufacturer] (
    [IdManufacturer] int IDENTITY(1,1) NOT NULL,
    [ManufacturerName] nvarchar(150) NULL,
    CONSTRAINT [PK_Manufacturer] PRIMARY KEY ([IdManufacturer])
);
SET IDENTITY_INSERT dbo.[Manufacturer] ON;
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (1,N'Азимут');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (2,N'Барбари');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (3,N'Берестов');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (4,N'Весна');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (5,N'Здоровый шаг');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (6,N'Карапуз');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (7,N'Кожевенные традиции');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (8,N'Лапушка');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (9,N'Маленький франт');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (10,N'Малыш-Спорт');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (11,N'Модный силуэт');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (12,N'Северята');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (13,N'Стиль и комфорт');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (14,N'Твой комфорт');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (15,N'Тёплые ножки');
INSERT INTO dbo.[Manufacturer] ([IdManufacturer],[ManufacturerName]) VALUES (16,N'Топ-Топ');
SET IDENTITY_INSERT dbo.[Manufacturer] OFF;
CREATE TABLE dbo.[Product] (
    [IdProduct] int IDENTITY(1,1) NOT NULL,
    [Category] nvarchar(50) NULL,
    [Subcategory] nvarchar(50) NULL,
    [Photo] nvarchar(50) NULL,
    [ProductName] nvarchar(150) NULL,
    [ManufacturerId] int NULL,
    [Description] nvarchar(max) NULL,
    [Сomposition] nvarchar(max) NULL,
    [ProductPrice] decimal(18,2) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY ([IdProduct])
);
SET IDENTITY_INSERT dbo.[Product] ON;
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (1,N'Детская обувь',N'Кроссовки',N'IMG_KS_195217.png',N'Кроссовки детские «Звёздочка» экокожа',10,N'Кроссовки детские «Звёздочка» экокожа. Производитель: ООО «Малыш-Спорт», г. Смоленск',N'Верх — экокожа (полиуретан на хлопковой основе), подкладка — хлопок 100%, подошва — ПВХ',2190.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (2,N'Детская обувь',N'Кроссовки',N'picture.png',N'Кроссовки детские «Гонщик» экокожа',16,N'Кроссовки детские «Гонщик» экокожа. Производитель: Фабрика «Топ-Топ», г. Киров',N'Верх — экокожа (микрофибра), подкладка — текстиль сетчатый (полиэстер), подошва — термопластичная резина (ТЭП)',2490.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (3,N'Детская обувь',N'Кроссовки',N'IMG_KS_195222.png',N'Кроссовки детские «Радуга» экокожа перфорированная',8,N'Кроссовки детские «Радуга» экокожа перфорированная. Производитель: ИП Смирнова Л.В. (бренд «Лапушка»), г. Вологда',N'Верх — экокожа перфорированная, вставки — нейлон, стелька — ортопедическая с латексной подушкой, подошва — ЭВА',1990.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (4,N'Детская обувь',N'Сапоги',N'IMG_KB_185501.png',N'Сапожки детские «Снежинка» зимние на меху',15,N'Сапожки детские «Снежинка» зимние на меху. Производитель: ООО «Тёплые ножки», г. Новосибирск',N'Верх — экокожа морозостойкая, утеплитель — искусственный мех (акрил 70%, полиэстер 30%), подкладка — флис, подошва — термоэластопласт (ТЭП)',3490.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (5,N'Детская обувь',N'Сапоги',N'IMG_KB_164816.png',N'Сапожки детские «Медвежонок» демисезонные непромокаемые',12,N'Сапожки детские «Медвежонок» демисезонные непромокаемые. Производитель: Компания «Северята», г. Архангельск',N'Верх — плащёвая ткань с водоотталкивающей пропиткой (полиэстер 100%), отделка — экокожа, подкладка — микрофибра, мембрана — AirTex, подошва — резина',3190.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (6,N'Детская обувь',N'Сапоги',N'IMG_KB_164811.png',N'Сапожки детские «Принцесса» кожаные',4,N'Сапожки детские «Принцесса» кожаные. Производитель: Мастерская «Весна», г. Тула',N'Верх — натуральная кожа (КРС), подкладка — шерсть натуральная (70%), байка (30%), стелька — войлочная, подошва — полиуретан',4290.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (7,N'Детская обувь',N'Босоножки',N'IMG_KSd_195207.png',N'Сандалии детские «Пчёлка» ортопедические летние',5,N'Сандалии детские «Пчёлка» ортопедические летние. Производитель: ООО «Здоровый шаг», г. Воронеж',N'Верх — нубук натуральный, подкладка — кожа растительного дубления, стелька — анатомическая с супинатором (латекс + пробка), подошва — каучук',2790.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (8,N'Детская обувь',N'Босоножки',N'IMG_KSd_185508.png',N'Сандалии детские «Морячок» текстильные с фиксатором',6,N'Сандалии детские «Морячок» текстильные с фиксатором. Производитель: ИП Кузнецов А.Д. (бренд «Карапуз»), г. Краснодар',N'Верх — джинсовая ткань (хлопок 100%), окантовка — искусственная кожа, подкладка — хлопок, подошва — ЭВА лёгкая',1690.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (9,N'Детская обувь',N'Туфли',N'IMG_KSho_185512.png',N'Туфли детские «Бантик» лаковые праздничные',9,N'Туфли детские «Бантик» лаковые праздничные. Производитель: Дом обуви «Маленький франт», г. Москва',N'Верх — искусственная лаковая кожа (ПВХ), носок усиленный — термопластичный полиуретан, подкладка — кожа искусственная дышащая, стелька — анатомическая с амортизацией, подошва — полиуретан',2390.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (10,N'Женская обувь',N'Сапоги',N'IMG_WB_170905.png',N'Сапоги зимние натуральная кожа',2,N'Сапоги женские зимние, нескользящая, устойчивая подошва, натуральный мех. Производитель: Дом обуви «Барбари», г. Новороссийск ',N'Верх — натуральная кожа, подкладка — евромех, натуральный мех, текстильный утеплитель, подошва — резина',25000.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (11,N'Женская обувь',N'Сапоги',N'IMG_WB_170859.png',N'Сапоги осенние натуральная кожа',2,N'Сапоги женские демисезонные из высококачественной натуральной кожи. Производитель: Дом обуви «Барбари», г. Новороссийск ',N'Верх — натуральная кожа, подкладка — текстильный утеплитель, стелька — текстиль, подошва — ТПР',15000.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (12,N'Женская обувь',N'Сапоги',N'IMG_WB_170906.png',N'Сапоги трубы демисезонные замшевые',14,N'Сапоги женские демисезонные замшевые. Производитель: ОАО «Твой комфорт», г. Ярославль',N'Верх — натуральная замша, утепленные, тракторная подошва, стелька — байка, подошва — резина',17000.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (13,N'Женская обувь',N'Босоножки',N'IMG_WSd_174332.png',N'Босоножки «Песчаный берег» коричневые',13,N'Коричневая кожаная модель с открытым носком, боковой пряжкой и закрытым каблуком. Производитель: ИП «Стиль и комфорт», г. Санкт-Петербург',N'Верх — 100% козья кожа, подкладка — 100% кожа; подошва: 100% кожа',7500.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (14,N'Женская обувь',N'Босоножки',N'IMG_WSd_185156.png',N'Женские босоножки «Черный кофе» со скульптурным каблуком',7,N'Открытый носок и ремешок со сборной пряжкой, низкий каблук и резиновая подошва гарантируют комфорт. Производитель: ЗАО «Кожевенные традиции», г. Вятка',N'Верх — кожа собственного производств, подкладка — кожа; подошва: резина',5600.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (15,N'Женская обувь',N'Босоножки',N'IMG_WSd_185551.png',N'Босоножки женские «Летний бриз»',11,N'Босоножки женские кожаные белые, регулируемый ремешок, закрытый каблук и кожаная подошва. Производитель: ООО «Модный силуэт», г. Кострома',N'Верх — натуральная кожа, подкладка — натуральная кожа, подошва — кожа',7130.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (16,N'Женская обувь',N'Туфли',N'IMG_WSho_174409.png',N'Демисезонные туфли натуральная кожа',11,N'Комфортные лаконичные лодочки, классический дизайна с современными акцентами. Производитель: ООО «Модный силуэт», г. Кострома',N'Верх — натуральная овечья кожа, подкладка и стелька — натуральная овечья кожа, подошва — резина',12340.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (17,N'Женская обувь',N'Туфли',N'IMG_WSho_185202.png',N'Туфли женские натуральная кожа с металлическими вставками',7,N'Стильные туфли для весеннего и летнего сезона. Производитель: ЗАО «Кожевенные традиции», г. Вятка',N'Верх — натуральная телячьей кожа, металлическая пряжка, подкладка и стелька— натуральная овечья кожа, подошва — резина',7757.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (18,N'Женская обувь',N'Туфли',N'IMG_WSho_185545.png',N'Туфли классические лодочки натуральная кожа',13,N'Модель из натуральной кожи, классический острый носок и изящная шпилька. Производитель: ИП «Стиль и комфорт», г. Санкт-Петербург',N'Верх — натуральная кожа, подкладка и стелька — натуральная кожа, подошва — тунит',7550.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (19,N'Женская обувь',N'Кроссовки',N'IMG_WS_174110.png',N'Кроссовки белые с оранжевым и красным',16,N'Многослойный верх из кожи и текстиля. Производитель: Фабрика «Топ-Топ», г. Киров',N'Верх — 70% кожа, 30% текстиль, подкладка — текстиль, подошва — резина',9450.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (20,N'Женская обувь',N'Кроссовки',N'IMG_WS_185528.png',N'Кроссовки летние кожаные',16,N'Уверенность на каждом шагу. Материал обеспечивает долговечность и комфорт при носке. Производитель: Фабрика «Топ-Топ», г. Киров',N'Верх — 87% кожа, 11% текстиль, 2% синтетика; подкладка: 100% текстиль; подошва: резина, пластик',8565.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (21,N'Женская обувь',N'Кроссовки',N'IMG_WS_185535.png',N'Кроссовки кожаные',13,N'Кроссовки женские из натуральной кожи. Производитель: ИП «Стиль и комфорт», г. Санкт-Петербург',N'Верх — натуральная кожа, подкладка — кожа, подошва — полиуретан',8765.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (22,N'Женская обувь',N'Кроссовки',N'IMG_WS_185538.png',N'Кроссовки «Стиль и комфорт»',13,N'Кроссовки женские из натуральной кожи и синтетических материалов, сетчатые вставки. Производитель: ИП «Стиль и комфорт», г. Санкт-Петербург',N'Верх — 70% кожа, 20% полиамид, 10% полиуретан; подкладка — текстиль, подошва — ТПУ',7795.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (23,N'Мужская обувь',N'Кроссовки',N'IMG_MS_185531.png',N'Кроссовки для бега «Драйв»',1,N'Сочетание стиля, комфорта и современных технологий. Производитель: Фабрика «Азимут», г. Санкт-Петербург',N'Верх —  сетка, подкладка — текстиль, подошва —  резина',6550.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (24,N'Мужская обувь',N'Кроссовки',N'IMG_MS_185532.png',N'Кроссовки «Азимут Бег»',1,N'Универсальный выбор для повседневного использования. Производитель: Фабрика «Азимут», г. Санкт-Петербург',N'Верх — 6% кожа, 29% текстиль, 15% полимерные материалы; подкладка — 100% текстиль; подошва — полимерные материалы, резина',7890.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (25,N'Мужская обувь',N'Кроссовки',N'IMG_MS_185533.png',N'Кроссовки',16,N'Кроссовки для мужчин, идеальное сочетание стиля и комфорта. Производитель: Фабрика «Топ-Топ», г. Киров',N'Верх — 56% кожа, 29% текстиль, 15% полимерные материалы; подкладка — 100% текстиль; подошва — полимерные материалы, резина',9567.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (26,N'Мужская обувь',N'Туфли',N'IMG_MSho_190514.png',N'Черные туфли в классическом стиле — база для деловых образов',2,N'Модель выполнена из натуральной кожи, на резиновой подошве. Производитель: Дом обуви «Барбари», г. Новороссийск ',N'Верх — натуральная кожа, подкладка — текстиль, стелька — натуральная кожа, подошва — резина',24569.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (27,N'Мужская обувь',N'Туфли',N'IMG_MSho_190518.png',N'Туфли мужские светлые классика демисезонные',3,N'Туфли на низком каблуке кожаные',N'Верх — натуральная кожа, подкладка — текстиль, стелька — натуральная кожа, подошва — ТЭП',10155.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (28,N'Мужская обувь',N'Туфли',N'IMG_MSho_191612.png',N'Туфли из натуральной кожи',3,N'Модель выполнена из натуральной кожи, на резиновой подошве, поддеживает классический и деловой стиль образов. Производитель: Дом обуви «Берестов», г. Москва',N'Верх — натуральная кожа, подкладка — натуральная кожа, стелька — натуральная кожа, подошва — резина',25625.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (29,N'Мужская обувь',N'Ботинки',N'IMG_MB_174349.png',N'Ботинки мужские демисезонные',2,N'Ботинки из натуральной кожи темно-коричневого и черного цвета на шнурках. Производитель: Дом обуви «Берестов», г. Москва',N'Верх — натуральная кожа, подкладка — текстиль, подошва — искусственный материал',21500.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (30,N'Мужская обувь',N'Ботинки',N'IMG_MB_191200.png',N'Ботинки черные из натуральной кожи',7,N'Ботинки представляют баланс традиций и современности. Выполнены из натуральной кожи насыщенного черного цвета. Производитель: ЗАО «Кожевенные традиции», г. Вятка',N'Верх — натуральная кожа, подкладка — ворсин, стелька — ворсин, подошва — тунит',14567.00);
INSERT INTO dbo.[Product] ([IdProduct],[Category],[Subcategory],[Photo],[ProductName],[ManufacturerId],[Description],[Сomposition],[ProductPrice]) VALUES (31,N'Мужская обувь',N'Ботинки',N'IMG_MB_191205.png',N'Ботинки зимние классические',2,N'Выбор на каждый день — натуральная кожа, натуральный мех. Производитель: Дом обуви «Барбари», г. Новороссийск ',N'Верх — натуральная кожа, подкладка — натуральный мех, стелька — натуральный мех, подошва — ТЭП',15670.00);
SET IDENTITY_INSERT dbo.[Product] OFF;
CREATE TABLE dbo.[ProductSize] (
    [IdProductSize] int IDENTITY(1,1) NOT NULL,
    [ProductId] int NULL,
    [Size] float NULL,
    [Stock] int NULL,
    [InitialStock] int NULL,
    CONSTRAINT [PK_ProductSize] PRIMARY KEY ([IdProductSize])
);
SET IDENTITY_INSERT dbo.[ProductSize] ON;
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (1,1,20,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (2,1,21,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (3,1,22,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (4,1,23,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (5,1,24,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (6,1,25,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (7,1,26,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (8,1,27,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (9,1,28,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (10,1,29,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (11,1,30,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (12,1,31,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (13,2,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (14,2,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (15,2,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (16,2,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (17,2,26,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (18,2,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (19,2,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (20,2,29,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (21,2,30,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (22,2,31,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (23,2,32,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (24,2,33,1,1);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (25,2,34,1,1);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (26,3,19,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (27,3,20,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (28,3,21,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (29,3,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (30,3,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (31,3,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (32,3,25,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (33,3,26,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (34,3,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (35,3,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (36,3,29,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (37,3,30,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (38,4,19,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (39,4,20,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (40,4,21,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (41,4,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (42,4,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (43,4,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (44,4,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (45,4,26,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (46,4,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (47,4,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (48,4,29,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (49,4,30,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (50,4,32,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (51,5,21,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (52,5,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (53,5,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (54,5,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (55,5,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (56,5,26,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (57,5,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (58,5,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (59,5,29,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (60,5,30,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (61,5,32,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (62,5,33,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (63,6,18,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (64,6,19,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (65,6,20,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (66,6,21,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (67,6,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (68,6,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (69,6,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (70,6,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (71,6,26,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (72,6,27,4,4);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (73,6,28,4,4);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (74,6,29,4,4);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (75,7,18,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (76,7,19,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (77,7,20,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (78,7,21,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (79,7,22,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (80,7,23,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (81,7,24,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (82,7,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (83,7,26,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (84,7,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (85,7,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (86,8,19,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (87,8,20,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (88,8,21,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (89,8,22,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (90,8,23,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (91,8,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (92,8,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (93,8,26,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (94,8,27,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (95,8,28,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (96,8,29,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (97,8,30,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (98,9,18,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (99,9,19,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (100,9,20,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (101,9,21,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (102,9,22,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (103,9,23,7,7);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (104,9,24,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (105,9,25,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (106,9,26,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (107,9,27,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (108,9,28,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (109,10,36,12,12);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (110,10,37,12,12);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (111,10,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (112,10,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (113,10,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (114,10,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (115,11,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (116,11,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (117,11,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (118,11,39,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (119,11,40,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (120,11,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (121,12,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (122,12,37,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (123,12,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (124,12,39,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (125,12,40,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (126,12,41,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (127,13,36,10,10);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (128,13,37,10,10);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (129,13,38,10,10);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (130,13,39,10,10);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (131,13,40,10,10);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (132,14,35,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (133,14,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (134,14,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (135,14,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (136,14,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (137,15,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (138,15,37,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (139,15,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (140,15,39,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (141,15,40,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (142,16,36,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (143,16,37,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (144,16,38,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (145,16,39,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (146,16,40,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (147,16,41,25,25);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (148,17,36,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (149,17,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (150,17,38,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (151,17,39,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (152,17,40,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (153,18,35,9,9);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (154,18,36,9,9);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (155,18,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (156,18,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (157,18,39,9,9);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (158,18,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (159,19,35,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (160,19,36,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (161,19,36.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (162,19,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (163,19,37.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (164,19,38,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (165,19,38.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (166,19,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (167,19,39.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (168,19,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (169,20,35,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (170,20,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (171,20,36.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (172,20,37,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (173,20,37.5,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (174,20,38,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (175,20,38.5,5,5);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (176,20,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (177,20,39.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (178,20,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (179,21,35,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (180,21,36,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (181,21,37,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (182,21,38,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (183,21,39,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (184,21,40,16,16);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (185,22,35,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (186,22,36,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (187,22,36.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (188,22,37,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (189,22,37.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (190,22,38,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (191,22,38.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (192,22,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (193,22,39.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (194,22,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (195,23,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (196,23,39.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (197,23,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (198,23,40.5,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (199,23,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (200,23,41.5,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (201,23,42,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (202,23,42.5,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (203,23,43,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (204,23,44,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (205,23,45,18,18);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (206,24,35,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (207,24,36,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (208,24,36.5,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (209,24,37,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (210,24,37.5,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (211,24,38,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (212,24,38.5,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (213,24,39,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (214,24,39.5,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (215,24,40,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (216,24,41,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (217,24,42,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (218,24,43,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (219,24,44,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (220,24,45,50,50);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (221,25,41,1,1);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (222,25,42,1,1);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (223,25,43,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (224,25,44,1,1);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (225,26,40,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (226,26,41,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (227,26,42,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (228,26,43,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (229,26,44,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (230,26,45,23,23);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (231,27,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (232,27,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (233,27,42,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (234,27,43,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (235,27,44,15,15);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (236,28,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (237,28,42,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (238,28,43,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (239,28,44,2,2);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (240,29,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (241,29,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (242,29,41,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (243,29,42,3,3);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (244,29,43,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (245,29,44,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (246,29,45,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (247,30,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (248,30,40,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (249,30,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (250,30,42,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (251,30,43,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (252,30,44,20,20);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (253,30,45,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (254,31,39,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (255,31,40,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (256,31,41,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (257,31,42,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (258,31,43,0,0);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (259,31,44,30,30);
INSERT INTO dbo.[ProductSize] ([IdProductSize],[ProductId],[Size],[Stock],[InitialStock]) VALUES (260,31,45,30,30);
SET IDENTITY_INSERT dbo.[ProductSize] OFF;
CREATE TABLE dbo.[Order] (
    [IdOrder] int IDENTITY(1,1) NOT NULL,
    [Date] date NULL,
    [UserId] int NULL,
    [Status] nvarchar(50) NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY ([IdOrder])
);
SET IDENTITY_INSERT dbo.[Order] ON;
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (1,'2026-04-01',3,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (2,'2026-04-02',5,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (3,'2026-04-03',7,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (4,'2026-04-03',9,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (5,'2026-04-03',12,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (6,'2026-05-04',14,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (7,'2026-05-05',15,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (8,'2026-05-07',17,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (9,'2026-05-08',20,N'Подтвержден');
INSERT INTO dbo.[Order] ([IdOrder],[Date],[UserId],[Status]) VALUES (10,'2026-05-08',17,N'Подтвержден');
SET IDENTITY_INSERT dbo.[Order] OFF;
CREATE TABLE dbo.[OrderProduct] (
    [IdOrderProduct] int IDENTITY(1,1) NOT NULL,
    [OrderId] int NULL,
    [ProductId] int NULL,
    [Size] float NULL,
    [Amount] int NULL,
    [OrderProductPrice] decimal(18,2) NULL,
    CONSTRAINT [PK_OrderProduct] PRIMARY KEY ([IdOrderProduct])
);
SET IDENTITY_INSERT dbo.[OrderProduct] ON;
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (1,1,1,25,1,2190.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (2,1,7,23,2,2790.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (3,2,2,34,1,2490.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (4,2,4,26,1,3490.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (5,2,9,22,1,2390.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (6,3,3,20,1,1990.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (7,3,8,28,2,1690.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (8,4,6,28,1,4290.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (9,4,5,26,1,3190.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (10,4,9,21,1,2390.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (11,5,10,37,1,25000.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (12,5,29,42,1,21500.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (13,6,25,42,2,9567.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (14,6,27,43,1,10155.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (15,6,24,42,1,7890.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (16,7,15,38,1,7130.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (17,7,16,37,1,12340.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (18,7,12,39,1,17000.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (19,7,13,37,1,7500.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (20,7,21,38,2,8765.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (21,8,18,39,1,7550.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (22,8,22,38,1,7795.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (23,8,11,40,1,15000.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (24,9,24,42,1,7890.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (25,9,30,42,1,14567.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (26,9,31,44,1,15670.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (27,9,26,43,1,24569.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (28,10,9,21,1,2390.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (29,10,16,39,1,12340.00);
INSERT INTO dbo.[OrderProduct] ([IdOrderProduct],[OrderId],[ProductId],[Size],[Amount],[OrderProductPrice]) VALUES (30,10,12,39,1,17000.00);
SET IDENTITY_INSERT dbo.[OrderProduct] OFF;
ALTER TABLE dbo.[Order] WITH CHECK ADD CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserId]) REFERENCES dbo.[User] ([IdUser]) ON DELETE NO ACTION;
ALTER TABLE dbo.[OrderProduct] WITH CHECK ADD CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY ([OrderId]) REFERENCES dbo.[Order] ([IdOrder]) ON DELETE CASCADE;
ALTER TABLE dbo.[OrderProduct] WITH CHECK ADD CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY ([ProductId]) REFERENCES dbo.[Product] ([IdProduct]) ON DELETE NO ACTION;
ALTER TABLE dbo.[Product] WITH CHECK ADD CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY ([ManufacturerId]) REFERENCES dbo.[Manufacturer] ([IdManufacturer]) ON DELETE NO ACTION;
ALTER TABLE dbo.[ProductSize] WITH CHECK ADD CONSTRAINT [FK_ProductSize_Product] FOREIGN KEY ([ProductId]) REFERENCES dbo.[Product] ([IdProduct]) ON DELETE NO ACTION;
COMMIT TRANSACTION;
GO