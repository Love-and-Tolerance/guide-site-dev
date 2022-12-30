#!/usr/bin/env bash

declare -a folders=("css" "FontAwesome" "fonts")
declare -a files=("404.html" "ayu-highlights.css" "book.js" "clipboard.min.js" "elsasticlunr.min.js" "highlight.css" "highlight.js" "mark.min.js" "print.html" "searcher.js" "searchindex.js" "searchindex.json" "tomorrow-night.css" ".nojekyll")

for i in "${folders[@]}"
do
   echo "$i"
done
