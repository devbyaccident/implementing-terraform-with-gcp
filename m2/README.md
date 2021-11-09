Commands used:

1. Use Application Default Credentials (ADC):
`gcloud auth application-default login`

1. List all GCP Projects:
`gcloud projects list`

1. Set active Project:
`gcloud config set project <PROJECT_ID>`

1. Use Service Account Credentials:
```
gcloud iam service-accounts create prod-svc
gcloud projects add-iam-policy-binding carved-rock-prod --member="serviceAccount:prod-svc@carved-rock-prod.iam.gserviceaccount.com" --role="roles/owner"
gcloud iam service-accounts keys create prod-svc-creds.json --iam-account=prod-svc@carved-rock-prod.iam.gserviceaccount.com
```

1. Set GCP Credentials:
`export GOOGLE_APPLICATION_CREDENTIALS=<Path to service account JSON key>`

1. Set ssh username (Optional):
`export TF_VAR_username=$(whoami)`

1. Run init
`terraform init`

1. Run Validate
`terraform validate`

1. Run Apply
`terraform apply`