#!/bin/bash
# This script will be run by user in ANALYZING_PROTOCOL module after pulling from the repo
# It will setup the directories and files as required for this module

rm -rf ~/workspace/QBox
cd ~/workspace 
mkdir QBox
cd QBox
wget "https://drive.google.com/uc?export=download&id=1dhb9L_XhE1JY4aTBmgBufOMqnNQjUupv" -O analyze_pcaps.tar.gz

