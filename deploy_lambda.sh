#!/bin/bash
echo "Listar artefacto de CodeDeploy"
pwd
ls

#aws s3 cp /tmp/lamda/Test.zip s3://your-bucket/lambda_functions/Test-Lambda/Test.zip
#aws lambda update-function-code --function-name TestLambda --s3-bucket your-bucket --s3-key lambda_functions/Test-Lambda/Test.zip