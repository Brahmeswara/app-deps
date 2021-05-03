
echo "Running SAM Deploy ...."
sam deploy --template-file ./out.yml --stack-name docudata-be-lambda-layer-stack ^
--capabilities CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM