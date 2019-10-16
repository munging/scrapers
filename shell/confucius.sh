#!/usr/bin/env bash

curl https://www.brainyquote.com/search_results?q=confucius | sed -n 's/.*view quote">//p' | sed 's/<\/a>//'
