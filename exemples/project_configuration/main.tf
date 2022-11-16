###################################
# Tag configuration for 
# Geo zone : France Central
# Not in disaster recovery datacenter
# Project : PRJ
# Budget : PRODUIT_A
# Resources with RGPD personal data
# No RGPD confidential data
# Environnement : Developpement
# Code repository : my_pet_project
###################################

module "aware_tagging" {
  source = "weareretail/tags/azurerm"

  geozone           = "France Central"
  budget            = "PRODUIT_A"
  project           = "PRJ"
  rgpd_personal     = true
  rgpd_confidential = false
  disaster_recovery = false
  environment       = "DEV"
  repository        = "my_pet_project"
}
