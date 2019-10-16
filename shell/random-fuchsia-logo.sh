#!/usr/bin/env bash

mkdir -p random
cd random || exit
frandom=$((RANDOM%307))
curl -O https://raw.githubusercontent.com/fuchsia-programming/fuchsia-programming.github.io/master/assets/images/logos/fuchsia-$((frandom)).png

if [ -f "fuchsia-$frandom" ];
then
  echo "Logo not found"
  exit 1
else
  echo "Logo fuchsia-$((frandom)).png found"
  uname -s
  #if [ "$OSTYPE" == "linux-gnu" ]; then
  #  echo "Linux"
  #  feh fuchsia-$((frandom)).png
  #fi
  exit 0
fi