# CI/CD — GitHub Actions

This ZIP includes `.github/workflows/terraform-ci.yml` for validating and planning Terraform on each push/PR.

## Connect Azure

1. Create an app registration (or reuse one) and grant subscription *Contributor* (or a custom role) for the target scope.
2. **OIDC (recommended):** In Entra admin, add a **Federated credential** for GitHub (issuer `https://token.actions.githubusercontent.com`, subject from your repo).
3. In the GitHub repo → **Settings → Secrets and variables → Actions**, add:
   - `AZURE_CLIENT_ID`
   - `AZURE_TENANT_ID`
   - `AZURE_SUBSCRIPTION_ID`
4. Copy `terraform.tfvars.example` → `terraform.tfvars` locally, or inject values via **GitHub Environments** / **Secrets** as `TF_VAR_*`.
5. **Apply** in production is intentionally not in the default workflow — add a protected environment + manual approval job, or run `terraform apply` from a controlled runner after plan review.

See [Azure login action](https://github.com/Azure/login) and [Terraform GitHub Actions patterns](https://developer.hashicorp.com/terraform/tutorials/automation/github-actions).