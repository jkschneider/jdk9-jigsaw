#!/bin/bash

set -eu

ORG_ASTRO_FOLDER="mods/step1/org.astro"
ORG_ASTRO2_FOLDER="mods/step1/org.astro2"
ORG_INTERMEDIATE_FOLDER="mods/step1/org.intermediate"

echo "Creating folders $ORG_ASTRO_FOLDER, $ORG_ASTRO2_FOLDER and $ORG_INTERMEDIATE_FOLDER if they do not exists."
mkdir -p $ORG_ASTRO_FOLDER $ORG_ASTRO2_FOLDER $ORG_INTERMEDIATE_FOLDER

echo "Compiling modules in $ORG_ASTRO_FOLDER"
javac -d $ORG_ASTRO_FOLDER \
        step1/org.astro/module-info.java step1/org.astro/org/astro/World.java
tree -fl $ORG_ASTRO_FOLDER

echo "Compiling modules in $ORG_ASTRO2_FOLDER"
javac -d $ORG_ASTRO2_FOLDER \
        step1/org.astro2/module-info.java step1/org.astro2/org/astro/World.java
tree -fl $ORG_ASTRO2_FOLDER

echo "Compiling modules in $ORG_INTERMEDIATE_FOLDER"
javac -d $ORG_INTERMEDIATE_FOLDER -mp "mods/step1" \
        step1/org.intermediate/module-info.java step1/org.intermediate/org/intermediate/Intermediate.java
tree -fl $ORG_INTERMEDIATE_FOLDER
