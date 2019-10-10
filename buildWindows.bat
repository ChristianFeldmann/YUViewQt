@echo on
echo Starting build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
.\configure.bat -release -opensource -confirm-license -prefix "C:\projects\Qt" -opengl dynamic -platform win32-msvc2015 -openssl "-IC:\projects\openSSL\include" "-LC:\projects\openSSL" -nomake examples -nomake tests -no-direct2d
where nmake
where jom
jom
# Install Qt to "C:\projects\Qt"
jom install
