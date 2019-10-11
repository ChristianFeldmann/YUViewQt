@echo on
echo Starting build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
.\configure.bat -release -opensource -confirm-license -prefix "C:\Users\travis\build\Qt" -opengl dynamic -platform win32-msvc2015 -openssl "-IC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL\include" "-LC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL" -nomake examples -nomake tests -no-direct2d
jom
jom install
