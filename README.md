# Multi-resource Terraform (Azure Provisioner)

This bundle deploys **6** workloads in one root module. Apply order may matter (e.g. resource group before other resources); review dependencies.

## Stacks

- **r0** (App Service): `module.r0_workload` → `./stacks/r0/`
- **r1** (Azure Kubernetes Service (AKS)): `module.r1_workload` → `./stacks/r1/`
- **r2** (Azure Application Gateway): `module.r2_workload` → `./stacks/r2/`
- **r3** (Azure Firewall): `module.r3_workload` → `./stacks/r3/`
- **r4** (Azure Load Balancer): `module.r4_workload` → `./stacks/r4/`
- **r5** (Azure VPN Gateway): `module.r5_workload` → `./stacks/r5/`

## Deploy steps

1. **Review every file** in this bundle before doing anything else — this is generated infrastructure-as-code, not a black box.
2. **Authenticate to Azure**: `az login` (interactive) or configure OIDC/federated identity if applying from CI.
3. **Copy `terraform.tfvars.example` → `terraform.tfvars`** and fill in real values. Never commit `terraform.tfvars`.
4. **Initialize the required remote backend**:
   ```bash
   terraform init -backend-config="resource_group_name=<state-rg>" -backend-config="storage_account_name=<state-account>" -backend-config="container_name=tfstate" -backend-config="key=<workload>.tfstate"
   ```
5. **Review a plan without saving a local plan file**:
   ```bash
   terraform plan
   ```
6. **Apply from the same protected environment after approval**:
   ```bash
   terraform apply
   ```

