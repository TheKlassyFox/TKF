@echo off

echo ----- Uninstaller Information -----
echo:

type "README (�����ÿ�).txt"
echo:

echo:

set /p ans = Press any key to continue:

echo:

echo ----- Removing Hidden Directory -----
echo:

del "C:\Windows\tkf.bat"
rmdir /s /q "C:\Program Files\TKF Corp"

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

echo ----- Uninstaller Completed -----
echo:

set /p ans = Press any key to exit:

echo: