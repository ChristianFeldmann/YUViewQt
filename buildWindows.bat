@echo on
echo Setup Winflexbison
copy C:\ProgramData\chocolatey\bin\win_flex.exe C:\ProgramData\chocolatey\bin\flex.exe
copy C:\ProgramData\chocolatey\bin\win_bison.exe C:\ProgramData\chocolatey\bin\bison.exe
echo Configuring Qt...
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
call .\configure.bat -release -opensource -confirm-license -prefix "C:\Users\travis\build\Qt" -opengl dynamic -platform win32-msvc2015 -openssl "-IC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL\include" "-LC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL" -nomake examples -nomake tests -no-feature-sql -no-feature-testlib -no-direct2d
echo Start Qt Build using jom...
jom
echo Install Qt into C:\Users\travis\build\Qt
jom install
