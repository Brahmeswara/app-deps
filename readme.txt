set NODE_PATH=C:\Users\91998\common-libs\docudata-be-ts\common-layers\nodejs\node_modules

https://356531459747.signin.aws.amazon.com/console


aws s3api create-bucket –-bucket docudata-be-sam-deploy-bucket


sam package --template-file template.yml --s3-bucket docudata-be-sam-deploy-bucket ^
--output-template-file out.yml


sam deploy --template-file ./out.yml --stack-name docudata-be-lambda-layer-stack ^
--capabilities CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM