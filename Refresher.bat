@echo off

echo ----- Refresher Information -----
echo:

type "README (읽으시오).txt"
echo:

echo:

set /p ans = Press any key to continue:

echo:

echo ----- Emptying Recycle Bin and Recent Files -----
echo:

rd /s /q %systemdrive%\$Recycle.bin
del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
taskkill /f /im explorer.exe
start explorer.exe

echo:

echo ----- Refresher Completed -----
echo:

set /p ans = Press any key to exit:

echo: