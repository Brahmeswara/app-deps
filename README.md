# app-deps
This repo makes the lambder layer of the application dependencies 
These are two internal packages named @docudata/common-utils and @docudata/bp-config-core
Note, these are pushed into AWS CodeArtifact repo (and not to the npm repo).
You have all the files available for understanding purposes.

This uses S3 bucker named docudata-be-sam-deploy-bucket

if you need to create your own S3 bucket the below AWS cli command

aws s3api create-bucket –-bucket docudata-be-sam-deploy-buck