#!/bin/bash

# このshファイルがあるディレクトリに移動(相対パスに対応させるため)
cd $(dirname $0)

# Dynmapの画像を取得する
# https://github.com/hampta/minecraft-dynmap-timemachine
cd ./minecraft-dynmap-timemachine
python3 dynmap-timemachine.py -v https://map.torosaba.net/ main flat [0,100,-2000] [25,25] 4 ../map/main-flat -th 32
rm .cache -R
python3 dynmap-timemachine.py -v https://map.torosaba.net/ flat flat [0,100,0] [10,10] 4 ../map/flat-flat -th 32
