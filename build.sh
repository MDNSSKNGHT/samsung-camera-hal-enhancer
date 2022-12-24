#!/usr/bin/env sh

set -eu

pushd zygisk/module
$HOME/android/sdk/ndk/25.1.8937393/ndk-build
popd

[ -d ".temp" ] && rm -r .temp
mkdir -p .temp/zygisk ; cp -r magisk/* .temp
for arch in arm64-v8a armeabi-v7a x86 x86_64; do
    cp "zygisk/module/libs/$arch/libexample.so" ".temp/zygisk/$arch.so"
done

pushd .temp
zip -r9 Module-Debug.zip * ; mv *.zip ..
popd
rm -r .temp
