#!/usr/bin/env bash

mkdir -p random
cd random || exit
curl -O https://raw.githubusercontent.com/fuchsia-programming/fuchsia-programming.github.io/master/assets/images/logos/fuchsia-$(( ( RANDOM % 307 ) )).png
