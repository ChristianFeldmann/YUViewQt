@echo on
echo Starting build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
echo Set
Set
C:\Strawberry\perl\bin\perl.exe Configure VC-WIN64A
nmake
