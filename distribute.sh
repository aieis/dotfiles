#!/bin/sh
cp -r config/. ~/.config
cp -r local/. ~/.local
cd home
for f in *; do cp $f ~/.$f; done
