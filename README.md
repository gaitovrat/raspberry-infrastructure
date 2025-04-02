# Raspberry Infrastructure
Infrastructure code for k3s cluster on raspberry pi.

## Apply terraform
```sh
terraform init -backend-config="state.config"
terraform plan -var-file="example.tfvars"
terraform apply -var-file="example.tfvars"
```
