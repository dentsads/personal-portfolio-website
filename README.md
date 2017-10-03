# dentsas.com

[Install s3cmd](http://s3tools.org/s3cmd) to be able to deploy to S3.

`sudo apt-get install s3cmd`

## Local testing

Open `src/index.html` to see the site.

## Deploy to S3

Set the required environment variables for the [AWS access keys](https://console.aws.amazon.com/iam/home#/security_credential).

```
export AWS_ACCESS_KEY=<aws-access-key>
export AWS_SECRET_KEY=<aws-secret-key>
```

Deploy by syncing to S3.

`sh deploy.sh`
