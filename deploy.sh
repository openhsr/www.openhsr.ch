#!/usr/bin/env bash

# Abort if a command fails!
set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ ! -n "$HOST" ];then
    echo "missing option \"HOST\", aborting"
    exit 1
fi
if [ ! -n "$USER" ];then
    echo  "missing option \"USER\", aborting"
    exit 1
fi
if [ ! -n "$PASSWORD" ];then
    echo  "missing option \"PASSWORD\", aborting"
    exit 1
fi

if [ ! -n "$DIRECTORY" ];then
    echo  "missing option \"DIRECTORY\", aborting"
    exit 1
fi

# Go into the directory, where the site was generated
cd "$DIR/_site/"


# TODO: allow SFTP
# TODO: allow verify cert
echo "Uploading..."
lftp -e "
open $HOST
set ssl:verify-certificate no
set ssl:check-hostname off
set cmd:fail-exit true
user $USER $PASSWORD
cd $DIRECTORY
mirror --reverse --delete --ignore-time --verbose --parallel . .
bye
"

# Complete!
echo "Done!"
exit 0
