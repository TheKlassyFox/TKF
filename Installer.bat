@echo off

echo ----- Installer Information -----
echo:
echo ������: õ�¾�
echo ����: 1.0.0
echo:
echo �� ���α׷��� ������ �ϴ��� �𸥴ٸ� ���� �������� ���ʽÿ�.
echo �����ڴ� ������ ���α׷��� ����� ���� å������ �ʽ��ϴ�.
echo �� ���α׷��� ����ڰ� ��� �� �� �ִٰ� �����մϴ�.
echo ������ �ʿ��ϸ� �����ڿ��� �����Ͻʽÿ�.
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
del "%PUBLIC%\Desktop\���̹� ����.lnk"
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\���̹� ����.lnk"
del "C:\Users\plus\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\���̹� ����.lnk"
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