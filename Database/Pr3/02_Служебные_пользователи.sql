-- Выполнить ПОСЛЕ сохранения выгрузки схемы и данных.
USE [kamenskiy_wondershoes];
GO
SET XACT_ABORT ON;
BEGIN TRANSACTION;
INSERT INTO dbo.[User] (LastName,FirstName,PatronymicName,Username,Role)
SELECT v.LastName,v.FirstName,v.PatronymicName,v.Username,v.Role
FROM (VALUES
 (N'a',N'a',N'a',N'a',N'Администратор'),
 (N'm',N'm',N'm',N'm',N'Менеджер'),
 (N'u',N'u',N'u',N'u',N'Авторизованный пользователь'),
 (N'-',N'-',N'-',N'g',N'Неавторизованный пользователь')
) v(LastName,FirstName,PatronymicName,Username,Role)
WHERE NOT EXISTS (SELECT 1 FROM dbo.[User] u WHERE u.Username=v.Username);
COMMIT;
GO
