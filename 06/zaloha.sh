#!/bin/sh
backupdir=/tmp/zaloha-`date +"%Y-%m-%d"`
mkdir -p "$backupdir" || { echo "mkdir chcipnul"; exit 1; }
cp -a "$1" "$backupdir"  || { echo "cp se neco nelibi"; exit 1; }
