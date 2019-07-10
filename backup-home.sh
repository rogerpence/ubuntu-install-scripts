#!/usr/bin/env bash

now=$(date +"%Y-%m-%d")

tar --exclude=/home/roger/Downloads \
    --exclude=/home/roger/.cache \
    -czvf /media/roger/Spinner/HomeBackup/rp-home-backup-$now.tar.gz '/home/roger'

# scp rp-home-backup-2019-03-21.tar.gz roger@$DORP:~/backup


#touch roger$now
