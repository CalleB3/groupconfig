variable "security_enabled" {
   type = bool
   description = "value"
   default = true
}

variable "personal_access_token" {
    type = string
    description = "PAT token for ADO organization"

}

variable "org_service_url" {
    type = string
    description = "URL to your ADO organization"
}

variable "project_name" {
    type = string
    description = "Name of project in Azure Devops"
}

variable "project_description" {
    type = string
    description = "Project description in Azure Devops"
}

variable "aad_display_name_reader" {
    type = string
    description = "Name of role in Azure Active Directory"
}

variable "aad_display_name_contributor" {
    type = string
    description = "Name of role in Azure Active Directory"
}

variable "aad_display_name_admin" {
    type = string
    description = "Name of role in Azure Active Directory"
}

variable "aad_group_description_reader" {
    type = string
    description = "Reader-group description in Azure Active Directory"
}

variable "aad_group_description_contributor" {
    type = string
    description = "Contributor-group description in Azure Active Directory"
}

variable "aad_group_description_admin" {
    type = string
    description = "Admin-group description in Azure Active Directory"
}

variable "ado_display_name_reader" {
    type = string
    description = "Name of role in Azure Devops"
}

variable "ado_display_name_contributor" {
    type = string
    description = "Name of role in Azure Devops"
}

variable "ado_display_name_admin" {
    type = string
    description = "Name of role in Azure Devops"
}

variable "ado_group_description_reader" {
    type = string
    description = "Reader-group description in Azure Devops"
}

variable "ado_group_description_contributor" {
    type = string
    description = "Contributor-group description in Azure Devops"
}

variable "ado_group_description_admin" {
    type = string
    description = "Admin-group description in Azure Devops"
}

