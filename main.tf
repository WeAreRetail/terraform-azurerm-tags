locals {

  regions = {
    "France Central" = "FRANCE"
    "France South"   = "FRANCE"
    "West Europe"    = "EUROPE"
    "North Europe"   = "EUROPE"
  }

  project_safe = upper(var.project)
  region_safe  = lookup(local.regions, var.geozone, "-What-")
  budget_safe  = upper(var.budget)

  tags = {
    "A_PROJECT"      = upper(local.project_safe)
    "A_REGION"       = upper(local.region_safe)
    "A_BUDGET"       = upper(local.budget_safe)
    "A_RGPD"         = var.rgpd_confidential ? "CONFIDENTIAL" : (var.rgpd_personal ? "PERSONAL" : "BUSINESS")
    "A_INFRA_REGION" = var.disaster_recovery ? "DISASTER_RECOVERY" : "MAIN"
    "A_ENVIRONMENT"  = upper(var.environment)
    "A_REPOSITORY"   = upper(var.repository)
  }
}
