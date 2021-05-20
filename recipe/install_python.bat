mkdir build
cd build

cmake -G"NMake Makefiles" ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DPYTHON_EXECUTABLE="%PYTHON%" ^
  -DPython3_EXECUTABLE="%PYTHON%" ^
  -DBUILD_PYTHON=1 ^
  ..
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

cd ..
rmdir build








python -m pip install . -vv
