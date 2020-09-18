## Install Terraform on macOS

```
brew install hashicorp/tap/terraform
```

## Provision Infrastructure with Terraform 

We will use the workspace feature of terraform to use the same code but have different states files.
See the list of your workspaces and which one is currently selected represented by *.

```sh
terraform workspace list
```

Initialize your directory to ensure your Terraform configuration is valid.

```sh
terraform init
```

Create a new workspace in the Terraform CLI with the workspace command.

```sh
terraform workspace new staging
```

Apply the configuration for your staging environment in the new workspace, specifying the staging.tfvars file with the -var-file flag.
```
terraform apply -var-file=staging.tfvars
```

Create a new workspace in the Terraform CLI with the workspace command.

```sh
terraform workspace new prod
```

Apply the configuration for your prod environment in the new workspace, specifying the prod.tfvars file with the -var-file flag.
```
terraform apply -var-file=prod.tfvars
```