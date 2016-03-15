#!/bin/bash

set -eu

ORG_ASTRO2_FOLDER="mods/step2/org.astro2"
COM_GREETINGS_FOLDER="mods/step2/com.greetings"

echo "Creating folders mods/step2 and $COM_GREETINGS_FOLDER"
mkdir -p mods/step2 $COM_GREETINGS_FOLDER

echo "Copying previously compiled modules"
cp -r mods/step1/* mods/step2

echo "Recompiling org.astro2 module-info to $ORG_ASTRO2_FOLDER"
javac -d $ORG_ASTRO2_FOLDER -mp "mods/step1" \
        step2/org.astro2/module-info.java
tree -fl $ORG_ASTRO2_FOLDER

echo "Compiling modules in $COM_GREETINGS_FOLDER"
javac -d $COM_GREETINGS_FOLDER -mp "mods/step2" \
        step2/com.greetings/module-info.java step2/com.greetings/com/greetings/Main.java
tree -fl $COM_GREETINGS_FOLDER
