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

if [ -d "./deploy" ]; then
    rm -rf ./deploy
fi

mkdir ./deploy

cd src/site || exit 2
rm -rf guide theme
mkdir guide theme
cp -r ../theme/* ./theme/
mv ./theme/site-index.hbs ./theme/index.hbs
rm ./theme/guide-index.hbs
mdbook build
cd ../..
cp -r src/site/guide/* ./deploy
cp src/site/guide/.nojekyll ./deploy

folders="css, FontAwesome, fonts, theme"

files="404.html, ayu-highlight.css, book.js, clipboard.min.js, elasticlunr.min.js, favicon.png, favicon.svg, highlight.css, highlight.js, ,mark.min.js, print.html, searcher.js, searchindex.js, searchindex.json, tomorrow-night.css, .nojekyll"

for guide in ./src/guides/*/
do
    guide_path=${guide%*/}
    guide_name=${guide_path##*/}
    echo "$guide_name"
    echo "$guide_path"
    cd "$guide_path" || exit 2
    rm -rf guide theme
    mkdir guide theme
    cp -r ../../theme/* ./theme/
    mv ./theme/guide-index.hbs ./theme/index.hbs
    rm ./theme/site-index.hbs
    mdbook build
    cd guide || exit 2
    for folder in $folders; do
        rm -rf "$(echo "$folder" | tr -d ",")"
    done
    for file in $files; do
        rm -rf "$(echo "$file" | tr -d ",")"
    done
    cd ../../../..
    mkdir deploy/"$guide_name"
    cp -r "$guide_path"/guide/* ./deploy/"$guide_name"/
done

