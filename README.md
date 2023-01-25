# dimitrios.dentsas.com

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

## Resume

See the result at `http://dimitrios.dentsas.com/resume/`

In order to build the resume locally, first install the `resume-cli` and the `caffeine` theme

```bash
npm install -g resume-cli
npm install jsonresume-theme-caffeine
```

afterwards build the resume locally

```bash
cd resume

# build the resume.html
resume export --resume resume.json --theme caffeine --format html build/resume.html

# open the resume.html in a browser
open build/resume.html
```

Everything you push to the `master` branch will be built by a Github action and published at `http://dimitrios.dentsas.com/resume/`
