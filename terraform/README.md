# Terraform root

Run Terraform commands from this directory. Reusable implementation is under `modules/`; generated reference
configurations are under `examples/`.

```bash
cd terraform
terraform init -backend-config=examples/backend.hcl.example
terraform fmt -check -recursive
terraform validate
terraform plan
```

The backend example contains coordinates only. Authenticate with Microsoft Entra ID, managed identity, or workload
identity federation. Never add an access key, SAS token, password, client secret, or private key.
