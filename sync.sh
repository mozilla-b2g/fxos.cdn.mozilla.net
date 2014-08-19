#!/bin/sh

cd $(dirname $0)
BUCKET=ffos-static
hash s3cmd 2>/dev/null || { echo >&2 "s3cmd required."; exit 1; }

if [ ! -e ./.s3cfg ]; then
    echo >&2 "./.s3cfg file missing. create it from the s3cfg.template file"
    exit 1
fi

cd public
s3cmd --config ../.s3cfg \
    --verbose \
    --progress \
    --recursive \
    --exclude=.DS_Store \
    --no-preserve \
    sync . s3://$BUCKET/


