#!/usr/bin/env sh

set -eu

[ -d ".temp" ] && rm -r .temp
mkdir .temp/ ; cp -r magisk/* .temp/
cd .temp/ ; zip -r9 Module-Debug.zip *
mv *.zip .. ; cd .. ; rm -r .temp
