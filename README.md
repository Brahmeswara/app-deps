# app-deps
This repo makes lambda layer out of the application packages and deploys them to AWS.

The packages are
* common-utils (package name is @docudata/common-utils)
* config business logic (package name is @docudata/bp-config-core)

# bulding

npm run build:production

# Deploying

npm run aws:deploy


`NOTE`: This uses S3 bucker named docudata-be-sam-deploy-bucket. If you need to create your own S3 bucket the below AWS cli command

aws s3api create-bucket –-bucket docudata-be-sam-deploy-buck