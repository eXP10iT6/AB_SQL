@echo off
title A+B_Update
cls

cd c:\AB_SQL
C:\AB_SQL\updater\PortableGit\cmd\git.exe checkout -- ./ && git pull

rem ������ � ����������
rem md C:\AB_SQL\client
rem md C:\AB_SQL\updater\UpdUpd
rem del /F /Q C:\AB_SQL\client\*
rem del /F /Q C:\AB_SQL\updater\UpdUpd\*

rem C:\AB_SQL\updater\ftp -v -s:C:\AB_SQL\updater\answers.dat

rem �������� ������ �� ������� ����
copy "C:\AB_SQL\updater\UpdUpd\�+�_����������.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\�+�_����������.lnk" "%USERPROFILE%/������� ����/"
copy "C:\AB_SQL\updater\UpdUpd\�+�.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\�+�.lnk" "%USERPROFILE%/������� ����/"
cls

copy "C:\AB_SQL\updater\UpdUpd\�+�_����������.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\�+�_����������.lnk" "%USERPROFILE%/����稩 �⮫/"
copy "C:\AB_SQL\updater\UpdUpd\�+�.lnk" "%USERPROFILE%/Desktop/"
copy "C:\AB_SQL\updater\UpdUpd\�+�.lnk" "%USERPROFILE%/����稩 �⮫/"
cls

copy "C:\AB_SQL\updater\UpdUpd\AB_Upd.cmd" "C:/AB_SQL/updater/"
copy "C:\AB_SQL\updater\UpdUpd\answers.dat" "C:/AB_SQL/updater/"
copy "C:\AB_SQL\updater\UpdUpd\ftp.exe" "C:/AB_SQL/updater/"

rem C:\AB_SQL\client\7z.exe e -oc:\ab_sql -y  C:\AB_SQL\client\BALANS.7z
call c:\ab_sql\updater\check.exe
rem pause
