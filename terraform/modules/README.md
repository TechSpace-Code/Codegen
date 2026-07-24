# Reusable modules

This workload is currently generated as a flat Terraform composition. Place reusable implementations in
`<domain>/<module>/`, with separate `main.tf`, `variables.tf`, `outputs.tf`, and README files. Do not move code
into a module until its inputs, outputs, ownership, versioning, and tests are defined.
