#!/bin/bash

set -eu

echo
echo "Running 'com.greetings.Main' from within the mods/step2 folder."
echo
java -modulepath mods/step2 -m com.greetings/com.greetings.Main
