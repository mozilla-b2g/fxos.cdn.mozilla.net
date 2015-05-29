#!/bin/sh

cd $(dirname $0)

if [ -z $BUCKET ]; then
    BUCKET=ffos-static
fi
echo "Syncing contents to $BUCKET"
echo "---------------------------"

hash aws 2>/dev/null || { echo >&2 "awscli missing. Install: pip install awscli"; exit 1; }

aws s3 sync public "s3://$BUCKET" \
    --exclude .DS_Store
