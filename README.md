# About

These are the files for the https://fxos.cdn.mozilla.net CDN. Sources are 
in the `public/` subdirectory

## Requirements

1. [awscli](https://aws.amazon.com/cli/) or `pip install awscli`
1. AWS access credentials to the S3 bucket. This is in the Cloudservices Operations
   production IAM. These should be where awscli can find it (env, credential file, etc)

## Updating

* fetch the latest sources: `git pull origin
* run: `sync.sh`

