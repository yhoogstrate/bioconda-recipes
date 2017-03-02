#!/bin/bash

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/etc
mkdir -p $PREFIX/doc
mkdir -p $PREFIX/data
mkdir -p $PREFIX/test


mv $(find . | grep configuration.cfg) $PREFIX/etc
mv bin/* "$PREFIX/bin"

ls -als $PREFIX/bin/*.py

chmod +x $PREFIX/bin/*.py
chmod +x $PREFIX/bin/*.sh

sed -i.bak 's#/apps/fusioncatcher#'$PREFIX'#g' $PREFIX/etc/configuration.cfg

#"$PYTHON" "$PREFIX/bin/update-config.py" -w




