#!/bin/bash

Link="https://bigota.d.miui.com/V11.0.6.0.PGGMIXM/miui_BEGONIAGlobal_V11.0.6.0.PGGMIXM_41b14febb2_9.0.zip"
FileName="$(pwd)/miui_BEGONIAGlobal_V11.0.6.0.PGGMIXM_41b14febb2_9.0.zip"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt

CurrentFolder=$(pwd)

if [ ! -z "$Link" ];then
    wget "$Link" -O "$FileName"
    bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
fi

cd "$CurrentFolder" && rm -rf "$CurrentFolder/*"