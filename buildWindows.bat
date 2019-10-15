@echo on
echo Qmake Tools
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
C:\Users\travis\build\Qt\bin\qmake.exe
echo Start Build
nmake
