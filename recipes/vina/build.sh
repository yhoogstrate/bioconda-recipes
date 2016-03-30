if [ "$(uname)" == "Darwin" ]; then
    cd build/mac/release
else
    cd build/linux/release
fi

make
cp vina $PREFIX/bin/
