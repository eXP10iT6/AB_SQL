@echo off
title A+B_Update
cls

cd c:\AB_SQL
"C:\AB_SQL\updater\PortableGit\bin\git.exe" clone --progress -v "https://github.com/eXP10iT6/AB_SQL.git" "C:\AB_SQL"
"C:\AB_SQL\updater\PortableGit\bin\git.exe" checkout -- ./ && "C:\AB_SQL\updater\PortableGit\bin\git.exe" pull

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

call c:\ab_sql\updater\check.exe
rem pause
