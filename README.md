# terraform-azurerm-sa

List account subscriptions:
```bash
az account list -o table
```

Update **subscription_id** in `terraform.tfvars` file:
```bash
cat > terraform.tfvars << EOF
subscription_id = $(az account list --query "[0].id")
EOF
```

---

Initalize Terraform:
```bash
terraform init -upgrade
```

Create storage account:
```bash
terraform apply -auto-approve
```

Destroy storage account:
```bash
terraform destroy -auto-approve
```
