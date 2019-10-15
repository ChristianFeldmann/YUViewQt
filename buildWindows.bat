@echo on
echo Setup Winflexbison
copy C:\ProgramData\chocolatey\bin\win_flex.exe C:\ProgramData\chocolatey\bin\flex.exe
copy C:\ProgramData\chocolatey\bin\win_bison.exe C:\ProgramData\chocolatey\bin\bison.exe
echo Qmake Tools
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
C:\Users\travis\build\Qt\bin\qmake.exe
echo Start Build
nmake
