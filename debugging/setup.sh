#!/bin/bash
# This script will be run by user in DEBUGGING module after pulling from the repo
# It will setup the directories and files as required for this module

rm -rf ~/workspace/QBox
cd ~/workspace
mkdir QBox
cd QBox
wget "https://drive.google.com/uc?export=download&id=1asLa-5c7DKQ6VyDm5AupwJ-CB0g45OKN" -O QBox_versions.tar.gz

