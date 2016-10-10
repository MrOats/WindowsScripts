REM Copies the Windows' CBS Log, typically used by the Windows Update Services and System File Checker programs.

copy %windir%\logs\cbs\CBS.log "%userprofile%\Desktop\cbs.txt"
pause 5
