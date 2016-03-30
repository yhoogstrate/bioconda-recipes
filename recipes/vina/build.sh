if [ "$(uname)" == "Darwin" ]; then
    cd build/mac/release
else
    cd build/linux/release
fi

sed -i.bak 's/1_46/1_59/' Makefile

make
cp vina $PREFIX/bin/
