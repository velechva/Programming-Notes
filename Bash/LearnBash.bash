#!/bin/bash

# Comments start with a hashtag

clear # clear the terminal window

echo "Print a message to the screen"

# Variables
COLOR="black"
VALUE="9"

echo "This is a string: $COLOR"
echo "And this is a number: $VALUE"

# Terminal shortcuts

# CTRL L = clear the terminal
# CTRL D = logout
# SHIFT Pg Up / Pg Down = Go up/down in the terminal
# !! = Repeat last command
# CTRL Z = Stops the current command

# Navigation

ls -a # List all files and folders
ls <foldername> # List files in <foldername>
ls -lh # Detailed list, human readable
ls -l *.jpg # List jpeg files only
ls -lh <fileName> = Result for file only

cd <foldername> # Change dir to <foldername>
cd / # Go to root
cd .. # Go up one folder
cd ../../.. # Go up multiple times

pwd # Print working directory

cat <filename> # Show contents of file

head -n <#oflines> # From the top
tail -n <#oflines> # From the bottom

mkdir # Create a folder

cp image.jpg newimage.jpg # Copy and rename file
cp image.jpg <foldername>/ # Copy to folder
cp -R stuff otherStuff # Copy and rename a folder

mv file.txt Documents/ # Move file to folder

rm <filename> # Delete file
rm -i <fileName> # Ask for confirmation before deleting each file
rm -f <fileName> # Force delete
rm -r <foldername> # Delete folder (recursively)

touch <filename> # Create or update a file

ln file1 file2 # Physical link
ln -s file1 file2 # Symbolic link

# File search

find -name "<filename" # Search for file
find -name "text" # Search for files that start with 'text'
find -name "*text" # Search for files the end with 'text'

find ~ -size +10M # Search files bigger than 10M (M, K, G)

# Search only files or directory's
find -type d
find -type f

grep <someText> <fileName> # Search for text in file
						   # -i = Doesn't include uppdercase words
						   # -I = exclude binary files

grep -r <text> <foldername>/ # Search for file names with occurence of the text

grep -E ^<text> <filename> # Search start of lines with the word text
grep -E <0-4> <filename> # Show lines containing the numbers 0, 1, 2, 3, 4
grep -E <a-zA-Z> <filename> # Retrieve all lines with alphabetical letters

# Execute a command in the background: add a & at the end
cp bigMovieFile.mp4 &

jobs # Show what is running in the background

# Archived files

tar -xvf archive.tar archive.tar # Decompress tar file
tar -zcvf my_archive.tar.gz folder/ # Compress tar file
tar -tf archive.tar # Show contents of tar file without decompressing it