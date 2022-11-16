variable "geozone" {
  type        = string
  description = "Azure region were resources are deployed"
  default     = "France Central"
}

variable "budget" {
  type        = string
  description = "Code name of the budget. "
}

variable "project" {
  type        = string
  description = "Code name of the subproject. Must have 3 digits."
  validation {
    condition     = length(var.project) == 3
    error_message = "Must be a 3 dights code."
  }
}

variable "custom_tags" {
  type        = map(string)
  description = "Specific tags."
  default     = {}
}

variable "rgpd_personal" {
  type        = bool
  description = "Indicates that project contains personal data"
}

variable "rgpd_confidential" {
  type        = bool
  description = "Indicates that project contains confidential data"
}

variable "disaster_recovery" {
  type        = bool
  description = "Indicates that the resources are on the disaster recovery infrastructure."
  default     = false
}

variable "environment" {
  type        = string
  description = "Environment code (LAB, DEV, INT, TST, PRE, PRD)."
  default     = "PRD"
  validation {
    condition     = contains(["lab", "dev", "int", "tst", "pre", "prd"], lower(var.environment))
    error_message = "Must be LAB, DEV, INT, TST, PRE, PRD."
  }
}

variable "repository" {
  type        = string
  description = "The repository hosting the infrastructure code"
  default     = "repository_not_specified"
}
