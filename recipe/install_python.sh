python -c "import numpy"

mkdir build
cd build

cmake \
  ${CMAKE_ARGS} \
  -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DPYTHON_EXECUTABLE="$PYTHON" \
  -DPython3_EXECUTABLE="$PYTHON" \
  -DBUILD_PYTHON=1 \
  ..

make

cd ..
rm -r build

# ----

python -m pip install . -vv
