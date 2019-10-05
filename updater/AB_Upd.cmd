@echo off
title A+B_Update
cls

rem Работа с каталогами
md C:\AB_SQL\client
md C:\AB_SQL\updater\UpdUpd
del /F /Q C:\AB_SQL\client\*
del /F /Q C:\AB_SQL\updater\UpdUpd\*

C:\AB_SQL\updater\ftp -v -s:C:\AB_SQL\updater\answers.dat

rem Копируем ярлыки на рабочий стол
copy "C:\AB_SQL\updater\UpdUpd\А+Б_Обновление.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\А+Б_Обновление.lnk" "%USERPROFILE%/Рабочий стол/"
copy "C:\AB_SQL\updater\UpdUpd\А+Б.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\А+Б.lnk" "%USERPROFILE%/Рабочий стол/"
cls

copy "C:\AB_SQL\updater\UpdUpd\Ђ+Ѓ_ЋЎ­®ў«Ґ­ЁҐ.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\Ђ+Ѓ_ЋЎ­®ў«Ґ­ЁҐ.lnk" "%USERPROFILE%/ђ Ў®зЁ© бв®«/"
copy "C:\AB_SQL\updater\UpdUpd\Ђ+Ѓ.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\Ђ+Ѓ.lnk" "%USERPROFILE%/ђ Ў®зЁ© бв®«/"
cls

copy "C:\AB_SQL\updater\UpdUpd\AB_Upd.cmd" "C:/AB_SQL/updater/"
copy "C:\AB_SQL\updater\UpdUpd\answers.dat" "C:/AB_SQL/updater/"
copy "C:\AB_SQL\updater\UpdUpd\ftp.exe" "C:/AB_SQL/updater/"

C:\AB_SQL\client\7z.exe e -oc:\ab_sql -y  C:\AB_SQL\client\BALANS.7z
call c:\ab_sql\updater\check.exe
rem pause
