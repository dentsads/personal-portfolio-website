#!/bin/bash

if [ -z "$AWS_ACCESS_KEY" ]; then
    echo "Need to set the AWS_ACCESS_KEY environment variable for the AWS access token"
    exit 1
fi

if [ -z "$AWS_SECRET_KEY" ]; then
    echo "Need to set the AWS_SECRET_KEY environment variable for the AWS secret token"
    exit 1
fi

if ! which s3cmd > /dev/null; then
   echo "s3cmd package was not found. Please install it."
   exit 1
fi

S3BUCKET="dimitrios.dentsas.com"

echo 'Syncing files to S3 bucket'
s3cmd sync src/ s3://$S3BUCKET/ --access_key=$AWS_ACCESS_KEY --secret_key=$AWS_SECRET_KEY -P --no-mime-magic -r && echo "Syncing was successful"

exit $?
