if [ -d build ]; then
  rm -r build
fi

# mkdir build
# cd build

# cmake \
#   -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
#   -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
#   -DCMAKE_INSTALL_LIBDIR=lib \
#   -DCMAKE_BUILD_TYPE=Release \
#   -DPYTHON_EXECUTABLE="$PYTHON" \
#   -DBUILD_PYTHON=1 \
#   ..

# make

# cd ..
# rm -r build

# ----

mkdir build
cd build

cmake \
  ${CMAKE_ARGS} \
  -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DPYTHON_EXECUTABLE="$PYTHON" \
  -DBUILD_PYTHON=1 \
  ..

make

cd ..
rm -r build

# ----

python -m pip install . -vv
