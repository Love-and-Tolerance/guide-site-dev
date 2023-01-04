#!/usr/bin/env sh

# Check if the './deploy' directory exists
if [ -d "./deploy" ]; then
    # If it does, delete it
    rm -rf ./deploy
fi

# Create a new './deploy' directory
mkdir ./deploy

# Go to the 'src/site' directory
cd src/site || exit 2

# Delete the 'guide' and 'theme' directories and recreate them
rm -rf guide theme
mkdir guide theme

# Copy the contents of '../theme/' to './theme/'
cp -r ../theme/* ./theme/

# Rename 'site-index.hbs' to 'index.hbs'
mv ./theme/site-index.hbs ./theme/index.hbs

# Delete 'guide-index.hbs'
rm ./theme/guide-index.hbs

# Build the 'mdbook'
mdbook build

# Go back to the parent directory
cd ../..

# Copy the contents of 'src/site/guide/' to './deploy'
cp -r src/site/guide/* ./deploy

# Copy the '.nojekyll' file to './deploy'
cp src/site/guide/.nojekyll ./deploy

# Set the list of directories to delete
folders="css FontAwesome fonts theme"

# Set the list of files to delete
files="404.html ayu-highlight.css book.js clipboard.min.js elasticlunr.min.js favicon.png favicon.svg highlight.css highlight.js mark.min.js print.html searcher.js tomorrow-night.css .nojekyll"

# Loop through all the directories in './src/guides/'
for guide in ./src/guides/*/
do
    # Set the path of the current guide
    guide_path=${guide%*/}
    # Set the name of the current guide
    guide_name=${guide_path##*/}
    # Go to the current guide's directory
    cd "$guide_path" || exit 2
    # Delete the 'guide' and 'theme' directories and recreate them
    rm -rf guide theme
    mkdir guide theme
    # Copy the contents of '../../theme/' to './theme/'
    cp -r ../../theme/* ./theme/
    # Rename 'guide-index.hbs' to 'index.hbs'
    mv ./theme/guide-index.hbs ./theme/index.hbs
    # Delete 'site-index.hbs'
    rm ./theme/site-index.hbs
    # Build the 'mdbook'
    mdbook build
    # Go to the 'guide' directory
    cd guide || exit 2
    # Loop through the list of directories to delete
    for folder in $folders; do
        # Delete the current directory
        rm -rf "$folder"
    done
    # Loop through the list of files to delete
    for file in $files; do
        # Delete the current file
        rm -rf "$file"
    done
    # Go back to the parent directory
    cd ../../../..
    # Create a new directory in './deploy' with the name of the current guide
    mkdir deploy/"$guide_name"
    # Copy the contents of the current guide's './guide/' directory to './deploy/[current guide name]'
    cp -r "$guide_path"/guide/* ./deploy/"$guide_name"/
    # Go to the './deploy/[current guide name]' directory
    cd deploy/$guide_name/ || exit 2
    # Loop through all the '.html' files in the current directory and its subdirectories
    for file in `find -name '*.html'`
    do
        # Set the initial depth to 0
        depth=0
        # Set the initial index to 0
        i=0
        # While the index is less than the length of the file name
        while [ $i -lt `expr length $file` ]; do
            # Set the current character to the character at the current index
            char=`expr substr "$file" $((i+1)) 1`
            # If the current character is a '/', increase the depth by 1
            if [ "$char" = '/' ]; then
                depth=$((depth+1))
            fi
            # Increase the index by 1
            i=$((i+1))
        done
        # Set the relative path to the root to an empty string
        relative_to_root=""
        # Set the index to 0
        i=0
        # While the index is less than the depth
        while [ $i -lt $depth ]; do
            # Append '../' to the relative path to the root
            relative_to_root="$relative_to_root../"
            # Increase the index by 1
            i=$((i+1))
        done
        # Remove the trailing '/' from the relative path to the root
        relative_to_root=$(echo "$relative_to_root" | awk '{sub(/\/$/,"",$1); print $1}')
        # Replace all instances of '{mane}' in the current file with the relative path to the root
        awk '{gsub(/\{mane\}/,"'"$relative_to_root"'")} 1' "$file" > "$file".tmp
        # Rename the modified file to the original name
        mv "$file".tmp "$file"
    done
    # Go back to the parent directory
    cd ../..
done

# Change to the "deploy" directory
cd deploy

# Find all files ending in ".png" and loop over them
for file in `find -name '*.png'`
do
    # Run the oxipng program on the current file with specified options
    oxipng -o 6 -i 1 --strip safe $file --fix
done

# Change back to the parent directory
cd ..

