#!/usr/bin/env bash

# Comprobar si pandoc está instalado
if ! which pandoc > /dev/null 2>&1; then

    sudo apt-get update
    sudo apt-get install -y pandoc
else
:
fi

for md in guts.*.md; do
  salida=${md//\.md/}
  pandoc "$md" -s -t man -o "$salida"
done
