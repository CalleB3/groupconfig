# GroupConfig
## Example config of main.tf
HCL:

terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "2.13.0"
    }
    azuredevops = {
      source = "microsoft/azuredevops"
      version = "0.1.8"
    }
  }
}
    provider "azuread" {
    # Configuration options
    }
    provider "azuredevops" {
    # Configuration options
    }
module "NewProject" {
    source = "./modules"
    personal_access_token = ""
    org_service_url = ""
    project_name = ""
    project_description = ""
    ado_group_description_reader = ""
    ado_group_description_contributor = ""
    ado_group_description_admin = ""
    aad_group_description_reader = ""
    aad_group_description_contributor = ""
    aad_group_description_admin = ""
    aad_display_name_contributor = ""
    aad_display_name_reader = ""
    aad_display_name_admin = ""
    ado_display_name_contributor = ""
    ado_display_name_reader = ""
    ado_display_name_admin = ""
}