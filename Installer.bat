@echo off

echo ----- Installer Information -----
echo:

type "README (읽으시오).txt"
echo:

echo:

set /p ans = Press any key to continue:

echo:

echo ----- Creating Hidden Directory and Files -----
echo:

mkdir "C:\Program Files\TKF Corp"
mkdir "C:\Program Files\TKF Corp\TheKlassyFox"
mkdir "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts"

copy "README (읽으시오).txt" "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\README (읽으시오).txt"
copy "Refresher.bat" "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\Refresher.bat"
echo start shell:RecycleBinFolder > "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\RecycleBin.bat"
echo explorer "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts" > "C:\Windows\tkf.bat"

echo:

echo ----- Downloading Whale -----
echo:

curl -L -o WhaleInstaller.exe https://installer-whale.pstatic.net/downloads/installers/WhaleSetup.exe

echo:

echo ----- Installing Whale -----
echo:

echo Uncheck the 'Send hardware information' checkbox.

echo:

WhaleInstaller.exe

echo:

set /p ans = Press any key after installing: 

echo:

echo Add a search engine to something else by accessing 'Settings - Address Bar - Manage Search Engines', and change the default search engine to it by accessing 'Settings - Address Bar - Default Search Engine.' Also, install neccessary extensions.

echo:

set /p ans = Press any key after installing: 

echo:

reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Naver Whale" /v SystemComponent /t REG_DWORD /d 1 /f
del WhaleInstaller.exe
del "%PUBLIC%\Desktop\네이버 웨일.lnk"
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\네이버 웨일.lnk"
del "C:\Users\plus\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\네이버 웨일*"
del "C:\Users\plus\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\네이버 웨일*"
move "C:\Program Files\Naver\Naver Whale" "C:\Program Files\TKF Corp\TheKlassyFox\Whale"
rmdir "C:\Program Files\Naver"
echo "C:\Program Files\TKF Corp\TheKlassyFox\Whale\Application\whale.exe" /incognito > "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\Whale.bat"

echo:

echo ----- Downloading VS Code -----
echo:

curl -L -o VSCode.zip https://az764295.vo.msecnd.net/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/VSCode-win32-x64-1.77.3.zip

echo:

echo ----- Installing VS Code -----
echo:

echo Use this location for extraction: 'C:\Program Files\TKF Corp\TheKlassyFox'.

echo:

VSCode.zip

echo:

set /p ans = Press any key after installing: 

echo:

del VSCode.zip
mklink "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\VSCode.lnk" "C:\Program Files\TKF Corp\TheKlassyFox\VSCode\Code.exe"

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

echo ----- Installer Completed -----
echo:

echo Check the taskbar shortcuts to see if all shortcuts are hidden.

echo:

set /p ans = Press any key to continue:

echo:

echo Check the start menu shortcuts to see if all shortcuts are deleted.

echo:

set /p ans = Press any key to continue:

echo:

echo Check the Program and Features to see if all shortcuts are hidden.

echo:

control

echo:

set /p ans = Press any key to continue:

echo:

echo Check the file explorer and remove the directories on quick access and files on recent files used.

echo:

explorer

echo:

set /p ans = Press any key to continue:

echo:

set /p ans = Press any key to exit:

echo: