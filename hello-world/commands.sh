#create am s3 biclet
aws s3 mb s3://peter-code-sam

# package cloudformation
aws cloudformation package \
    --s3-bucket peter-code-sam \
    --template-file template.yaml \
    --output-template-file gen/template-generated.yaml

# sam package ...
aws cloudformation deploy \
    --template-file gen/template-generated.yaml \
    --stack-name hello-world-sam \
    --capabilities CAPABILITY_IAM