@echo on
echo Setup Winflexbison
copy C:\ProgramData\chocolatey\bin\win_flex.exe C:\ProgramData\chocolatey\bin\flex.exe
copy C:\ProgramData\chocolatey\bin\win_bison.exe C:\ProgramData\chocolatey\bin\bison.exe
echo Delete wrong perl version
del C:\program files\Git\usr\bin\perl.exe
echo Where perl
where perl
perl --version
echo Starting build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
call .\configure.bat -release -opensource -confirm-license -prefix "C:\Users\travis\build\Qt" -opengl dynamic -platform win32-msvc2015 -openssl "-IC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL\include" "-LC:\Users\travis\build\ChristianFeldmann\YUViewQt\openSSL" -nomake examples -nomake tests -no-direct2d
echo Where
where jom
echo Call jom
jom
echo Call jom install
jom install
