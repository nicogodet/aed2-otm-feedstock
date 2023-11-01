:: Build
mingw32-make shared

mkdir %LIBRARY_PREFIX%\mingw-w64\bin
mkdir %LIBRARY_PREFIX%\mingw-w64\lib
mkdir %LIBRARY_PREFIX%\mingw-w64\include
copy libaed2.dll.a %LIBRARY_PREFIX%\mingw-w64\lib\
copy libaed2.dll %LIBRARY_PREFIX%\mingw-w64\bin\
for %%f in (*.mod) do @copy "%%f" %LIBRARY_PREFIX%\mingw-w64\include\
for /r include %%f in (*.h) do @copy "%%f" %LIBRARY_PREFIX%\mingw-w64\include\
