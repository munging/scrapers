#!/usr/bin/env bash

mkdir -p random
cd random || exit
# shellcheck disable=SC2004
frandom=$((RANDOM%307))
# shellcheck disable=SC1073
curl -O https://raw.githubusercontent.com/fuchsia-programming/fuchsia-programming.github.io/master/assets/images/logos/fuchsia-$(( frandom  )).png

if [ -f "fuchsia-$frandom" ];
then
  echo "Logo not found"
  exit 1
else
  ls
  echo "Logo fuchsia-$((frandom)).png found"
  #if [[ "$(uname -s)" == "Linux" ]]; then
  #   echo "Linux"
  feh fuchsia-$((frandom)).png
  #fi
  exit 0
fi