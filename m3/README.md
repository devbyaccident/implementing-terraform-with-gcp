#
Commands used:

1. Bootstrap state bucket
`gsutil mb -p carved-rock-prod gs://carved-rock-state-bucket`

1. Run init
`terraform init`

1. Run Validate
`terraform validate`

1. Run Apply
`terraform apply --auto-approve`

1. Run Destroy
`terraform destroy --auto-approve`

1. Run init with backend config
`terraform init -backend=true -backend-config=backend.config`

1. Remove spaces and newlines from application default credentials.
`cat ~/.config/gcloud/application_default_credentials.json | sed ':a;N;$!ba;s/\n/ /g' | sed 's/[[:space:]]//g'`

1. Run Apply
`terraform apply --auto-approve`

1. Run Destroy
`terraform destroy --auto-approve`
