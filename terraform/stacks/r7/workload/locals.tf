locals {
  common_tags = {
    application            = var.application
    environment            = var.environment
    owner                  = var.owner
    cost_center            = var.cost_center
    business_unit          = var.business_unit
    data_classification    = var.data_classification
    criticality            = var.criticality
    compliance_framework   = var.compliance_framework
    network_segmentation   = var.network_segmentation
  }
}
