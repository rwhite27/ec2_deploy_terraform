# EC2 Deploy on AWS using Terraform


## Validate and Format Terraform files

### Validate the Terraform configuration files to catch any syntax errors or issues before applying.

```sh
terraform validate
```

### Format the Terraform files to ensure consistency in code style.

```sh
terraform fmt
```


## To deploy in a specific environment

Go into the environments folder and the execute the following commands

```sh
cd /environments/name_of_enviroment
```

### Terraform Plan

``` sh
terraform plan -var-file=terraform.tfvars
```

### Terraform Apply


``` sh
terraform apply -var-file=terraform.tfvars
```