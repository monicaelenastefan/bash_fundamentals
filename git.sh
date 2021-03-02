#!/bin/bash

source ~/exercices/words.sh https://google.com test.txt
random=$RANDOM
touch ~/exercices/$random
cat ~/exercices/words.sh > ~/exercices/$random
cd ~/exercices/
git add .
git commit -m "com with file:$RANDOM"
git push -u origin main
echo "bv esti tare"
