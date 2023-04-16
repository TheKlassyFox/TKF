@echo off

echo ----- Installer Information -----
echo:
echo 개발자: 천태양
echo 버전: 1.0.0
echo:
echo 이 프로그램이 무엇을 하는지 모른다면 절대 실행하지 마십시오.
echo 개발자는 실행한 프로그램의 결과에 대해 책임지지 않습니다.
echo 이 프로그램은 사용자가 영어를 할 수 있다고 가정합니다.
echo 도움이 필요하면 개발자에게 문의하십시오.
echo:
set /p ans = Press any key to continue:
echo:

echo ----- Creating Hidden Directory -----
echo:
mkdir "C:\Program Files\TKF Corp"
mkdir "C:\Program Files\TKF Corp\TheKlassyFox"
mkdir "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts"
echo explorer "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts" > "C:\Windows\tkf.bat"
echo start shell:RecycleBinFolder > "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\RecycleBin.bat"
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
set /p ans = Press any key after installing: 
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Naver Whale" /v SystemComponent /t REG_DWORD /d 1 /f
del WhaleInstaller.exe
del "%PUBLIC%\Desktop\네이버 웨일.lnk"
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\네이버 웨일.lnk"
del "C:\Users\plus\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\네이버 웨일.lnk"
rmdir /s /q /f "C:\Users\plus\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
move "C:\Program Files\Naver\Naver Whale" "C:\Program Files\TKF Corp\TheKlassyFox\Whale"
rmdir "C:\Program Files\Naver"
mklink "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\Whale.lnk" "C:\Program Files\TKF Corp\TheKlassyFox\Whale\Application\whale.exe"
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
set /p ans = Press any key after installing: 
del VSCode.zip
mklink "C:\Program Files\TKF Corp\TheKlassyFox\Shortcuts\VSCode.lnk" "C:\Program Files\TKF Corp\TheKlassyFox\VSCode\Code.exe"
echo:

echo ----- Installer Completed -----
echo:
echo Check the taskbar shortcuts to see if all shortcuts are hidden.
set /p ans = Press any key to continue:
echo:
echo Check the start menu shortcuts to see if all shortcuts are deleted.
set /p ans = Press any key to continue:
echo:
echo Check the Program and Features to see if all shortcuts are hidden.
control
set /p ans = Press any key to continue:
echo:
echo Check the file explorer and remove the directories on quick access and files on recent files used.
explorer
set /p ans = Press any key to continue:
echo:
set /p ans = Press any key to exit:
echo: