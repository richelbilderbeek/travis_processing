#!/bin/bash
myexe="./processing-3.1.1/processing-java"
input_folder="multitab_hell_world"
output_folder=$input_folder"_output"

if [ ! -e $myexe ]
then
  echo "Executable '"$myexe"' not found, line "$LINENO
  exit 1
fi

if [ ! -e $input_folder ]
then
  echo "Input folder '"$input_folder"' not found, line "$LINENO
  exit 1
fi

if [ -e $output_folder ]
then
  echo "Output folder '"$output_folder"' found, deleting it"
  rm -rf $output_folder
fi

if [ -e $output_folder ]
then
  echo "Folder '"$output_folder"' could not be deleted, line "$LINENO
  exit 1
fi

$myexe --sketch=$input_folder --output=$output_folder --build > /dev/null

if [ -e $output_folder/$input_folder.class ]
then
  # echo "Success"
  rm -rf $output_folder
  exit 1
else
  echo "Build failed, line "$LINENO
  exit 0
fi
