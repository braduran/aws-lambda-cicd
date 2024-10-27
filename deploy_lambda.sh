#!/bin/bash
echo 'Inicio proceso de empaquetamiento...'
zip file_lambda lambda_function.py
echo 'Subir codigo a s3'
aws s3 cp file_lambda.zip s3://lambda-cicd-brayan/cicd-codepipeline/SourceArti/file_lambda.zip
echo 'Actualizando lambda...'
aws lambda update-function-code --function-name aws-cicd-lambda --s3-bucket lambda-cicd-brayan --s3-key cicd-codepipeline/SourceArti/file_lambda.zip --region us-east-1