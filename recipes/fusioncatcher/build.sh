#!/bin/bash

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/etc
mkdir -p $PREFIX/doc
mkdir -p $PREFIX/data
mkdir -p $PREFIX/test


mv etc/* "$PREFIX/etc"
mv bin/* "$PREFIX/bin"
mv doc/* "$PREFIX/doc"
mv test/* "$PREFIX/test"
mv * "$PREFIX"

ls -als $PREFIX/bin/*.py

chmod +x $PREFIX/bin/*.py
chmod +x $PREFIX/bin/*.sh
chmod +x $PREFIX/test/*.sh

sed -i.bak 's#/apps/fusioncatcher#'$PREFIX'#g' $PREFIX/etc/configuration.cfg

#"$PYTHON" "$PREFIX/bin/update-config.py" -w




