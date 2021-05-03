echo "Running SAM Package...."
sam package --template-file template.yml --s3-bucket docudata-be-sam-deploy-bucket ^
--output-template-file out.yml