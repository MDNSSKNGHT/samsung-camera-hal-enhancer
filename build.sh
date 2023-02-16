#!/usr/bin/env sh

set -eu

PRODUCT="${1:-none}"

[ -d ".temp" ] && rm -r .temp
mkdir .temp/ ; cp -r magisk/* "$PRODUCT"/* .temp/
cd .temp/ ; zip -r9 Module-$PRODUCT.zip *
mv *.zip .. ; cd .. ; rm -r .temp
