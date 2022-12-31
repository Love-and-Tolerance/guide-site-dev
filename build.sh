#!/usr/bin/env sh

if test -z "$(command -v mdbook 2> /dev/null)"; then
    printf "mdbook is required to build, do you want to install it? (y/n) "
    read -r response
    case $response in
      [Yy]*)
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
        cargo install mdbook
        ;;
      [Nn]*)
        exit
        ;;
      *)
        echo "Invalid response"
        exit 1
        ;;
    esac
fi

folders="css, FontAwesome, fonts"

files="404.html, ayu-highlights.css, book.js, clipboard.min.js, elsasticlunr.min.js, highlight.css, highlight.js, ,mark.min.js, print.html, searcher.js, searchindex.js, searchindex.json, tomorrow-night.css, .nojekyll"

if [ -d "./deploy" ]; then
    rm -rf ./deploy
fi

mkdir ./deploy

for folder in $folders
do
   echo "$folder" | tr -d ' ,'
done

for dir in ./src/guides/*/
do
    dir=${dir%*/}
    echo "$dir"
    echo "${dir##*/}"
done

