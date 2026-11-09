-- Практическая работа 2. Каменский Илья, ИП-23-3.
-- Создание отдельной базы. Существующая база не изменяется.
USE [master];
GO
IF DB_ID(N'kamenskiy_wondershoes') IS NOT NULL
    THROW 51000, N'База kamenskiy_wondershoes уже существует. Скрипт остановлен.', 1;
GO
CREATE DATABASE [kamenskiy_wondershoes] COLLATE Cyrillic_General_CI_AS;
GO
