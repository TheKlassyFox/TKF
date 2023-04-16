@echo off

echo ----- Uninstaller Information -----
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

echo ----- Removing Hidden Directory -----
echo:
del "C:\Windows\tkf.bat"
rmdir /s /q "C:\Program Files\TKF Corp"
echo:

echo ----- Uninstaller Completed -----
echo:
set /p ans = Press any key to exit:
echo: