variable "subscription_id" {
  description = "Azure subscription ID for deployment."
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for VM and related resources."
}

variable "location" {
  type        = string
  description = "Azure region."
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine."
}

variable "vm_size" {
  type        = string
  description = "Azure VM SKU."
}

variable "admin_username" {
  type        = string
  description = "Local administrator username."
}

variable "key_vault_name" {
  type        = string
  description = "Existing Key Vault where this module's auto-generated secret is stored."
}
variable "key_vault_resource_group_name" {
  type        = string
  description = "Resource group of the Key Vault referenced by key_vault_name."
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for Linux authentication when using SSH."
  default     = null
}

variable "application" {
  type = string
}
variable "environment" {
  type = string
}
variable "owner" {
  type = string
}
variable "cost_center" {
  type = string
}
variable "business_unit" {
  type = string
}
variable "data_classification" {
  type = string
}
variable "criticality" {
  type = string
}
variable "compliance_framework" {
  type = string
}
variable "network_segmentation" {
  type = string
}
