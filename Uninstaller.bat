@echo off

echo ----- Uninstaller Information -----
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

echo ----- Removing Hidden Directory -----
echo:
del "C:\Windows\tkf.bat"
rmdir /s /q "C:\Program Files\TKF Corp"
echo:

echo ----- Uninstaller Completed -----
echo:
set /p ans = Press any key to exit:
echo: