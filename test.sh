#!/usr/bin/env sh

set -eu

PRODUCT="${1:-none}"
SAVEPATH="/sdcard/Download"

adb push Module-$PRODUCT.zip $SAVEPATH
adb shell su -c magisk --install-module $SAVEPATH/Module-$PRODUCT.zip
adb reboot
