# About

These are the files for the https://fxos.cdn.mozilla.net CDN. Sources are 
in the `public/` subdirectory

## Requirements

1. [s3cmd](http://s3tools.org/s3cmd) or `brew install s3cmd` for OS X
1. AWS access credentials to the S3 bucket. This is in the Cloudservices Operations
   production IAM.
1. `cp s3cfg.template .s3cfg`
1. Edit `.s3cfg` with the appropriate Access ID and secret

## Updating

* fetch the latest sources: `git pull origin
* run: `sync.sh`

