#!/bin/bash
# This script will be run by user in LINUX COMMAND module, after cloning the git repo
# It will setup the directories and files as required for this module


rm -rf ~/workspace/QBox
cd ~/workspace
mkdir QBox QBox/logs
cd QBox/logs
wget "https://drive.google.com/uc?export=download&id=13gFpH7Nbhvuf1_cPouU4TV9U6Obn-Wd-" -O vsftpd1.log
wget "https://drive.google.com/uc?export=download&id=1lDzvAN7WevKu6UIhLRW0qtD9JAZBd1El" -O vsftpd2.log
wget "https://drive.google.com/uc?export=download&id=19Vga1BmZR1S3Wm16VLwkCSP1zUYDyzLH" -O vsftpd3.log
