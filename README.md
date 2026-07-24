# Multi-resource Terraform (Azure Provisioner)

This bundle deploys **8** workloads in one root module. Apply order may matter (e.g. resource group before other resources); review dependencies.

## Stacks

- **r0** (Azure Virtual Network): `module.r0_workload` → `./stacks/r0/`
- **r1** (Azure VPN Gateway): `module.r1_workload` → `./stacks/r1/`
- **r2** (Azure Load Balancer): `module.r2_workload` → `./stacks/r2/`
- **r3** (Azure Firewall): `module.r3_workload` → `./stacks/r3/`
- **r4** (Storage Accounts): `module.r4_workload` → `./stacks/r4/`
- **r5** (Resource group): `module.r5_workload` → `./stacks/r5/`
- **r6** (Azure Kubernetes Service (AKS)): `module.r6_workload` → `./stacks/r6/`
- **r7** (Virtual Machines): `module.r7_workload` → `./stacks/r7/`

## Deploy steps

1. **Review every file** in this bundle before doing anything else — this is generated infrastructure-as-code, not a black box.
2. **Authenticate to Azure**: `az login` (interactive) or configure OIDC/federated identity if applying from CI.
3. **Confirm the Key Vault exists** and the identity you're applying with can get/set secrets on it — this bundle generates a password and stores it there; it does not create the vault itself.
4. **Copy `terraform.tfvars.example` → `terraform.tfvars`** and fill in real values. Never commit `terraform.tfvars`.
5. **Initialize the required remote backend**:
   ```bash
   terraform init -backend-config="resource_group_name=<state-rg>" -backend-config="storage_account_name=<state-account>" -backend-config="container_name=tfstate" -backend-config="key=<workload>.tfstate"
   ```
6. **Review a plan without saving a local plan file**:
   ```bash
   terraform plan
   ```
7. **Apply from the same protected environment after approval**:
   ```bash
   terraform apply
   ```
8. **Retrieve a generated secret** when you need it (never from Terraform state):
   ```bash
   az keyvault secret show --vault-name <key_vault_name> --name <secret-name-from-output> --query value -o tsv
   ```

## Repository layout

Executable infrastructure is under `terraform/`. Run `terraform init`, validation, plan, and apply commands from
that directory. Repository-level CI, documentation, compliance evidence, and governance controls remain at the root.
Service-specific reference folders are under `terraform/examples/`.

## Remote state location

No `terraform.tfstate` file is included in this repository. After initialization, Azure Storage maintains the
authoritative state as the blob:

```text
<storage-account> / <container-name> / <application>/<environment>.tfstate
```

Use Microsoft Entra authentication and a unique backend key per environment. Never commit `*.tfstate`,
`*.tfstate.*`, `*.tfplan`, or `.terraform/`. See `IMPLEMENTATION_GUIDE.md` for backend creation, hardening,
initialization, verification, recovery, and access-control requirements.

## Secret workflow

1. Classify the secret and define its owner, consumer, expiry, and rotation period.
2. Store the value in an approved, private, RBAC-enabled Azure Key Vault—not in Terraform, tfvars, Git, or CI files.
3. Enable managed identity on the consuming workload or workload identity federation for CI/CD.
4. Grant only the minimum Key Vault data-plane role at the narrowest scope.
5. Configure only the vault URI and secret name or a native Key Vault reference.
6. Retrieve the value at application runtime; never print, output, or persist it.
7. Monitor access and rotate using Key Vault versions, then disable the superseded version.

Terraform values marked `sensitive` can still be stored in state. Avoid Terraform secret data sources and prefer
runtime managed-identity retrieval. Complete the detailed secret runbook in `IMPLEMENTATION_GUIDE.md`.
