#!/bin/bash

set -e

PRODUCT=$1

[ -d ".temp" ] && rm -r .temp
mkdir .temp/ ; cp -r magisk/* product/$PRODUCT/* .temp/
cd .temp/ ; zip -r Module-$PRODUCT.zip *
mv *.zip .. ; cd .. ; rm -r .temp
