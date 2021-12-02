#
Create Bucket

##
Commands used:

1. Change into bucket directory from m4 directory
`cd bucket/`

1. Run init
`terraform init`

1. Run Validate
`terraform validate`

1. Run Apply
`terraform apply --auto-approve`

#
Put static content in bucket

##
Commands used:

1. Change into content directory from m4/bucket directory
`cd ../content`

1. Create content to deploy (Optional)
`echo "Hello World!" >> static-site/index.html`

1. Run init
`terraform init`

1. Run Validate
`terraform validate`

1. Run Apply
`terraform apply --auto-approve`

1. Cleanup (Deleting bucket will remove contents)
`cd ../bucket && terraform destroy --auto-approve`