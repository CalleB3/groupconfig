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
      org_service_url = var.org_service_url
      personal_access_token = var.personal_access_token
}

resource "azuredevops_project" "p" {
  name        = var.project_name
  description = var.project_description
}

resource "azuread_group" "aad-reader" {
  display_name     = var.aad_display_name_reader
  security_enabled = var.security_enabled
  description      = var.aad_group_description_reader
}

resource "azuread_group" "aad-contributor" {
  display_name     = var.aad_display_name_contributor
  security_enabled = var.security_enabled
  description      = var.aad_group_description_contributor
}

resource "azuread_group" "aad-admin" {
  display_name     = var.aad_display_name_admin
  security_enabled = var.security_enabled
  description      = var.aad_group_description_admin
}

resource "azuredevops_group" "ProjectReader" {
  scope        = azuredevops_project.p.id
  display_name = var.ado_display_name_reader
  description  = var.ado_group_description_reader
}

resource "azuredevops_group" "ProjectContributor" {
  scope = azuredevops_project.p.id
  display_name = var.ado_display_name_contributor
  description  = var.ado_group_description_contributor
}

resource "azuredevops_group" "ProjectAdmin" {
  scope = azuredevops_project.p.id
  display_name = var.ado_display_name_admin
  description  = var.ado_group_description_admin
  }
