terraform {
  required_providers {
    jira = {
      source  = "fourplusone/jira"
      version = "~> 0.1"
    }
  }
}

provider "jira" {
  url      = var.jira_url
  token    = var.jira_token
}

locals {
  users = {
    for user in var.users : user.email => {
      name         = user.name
      email        = user.email
      display_name = user.display_name
    }
  }
}

resource "jira_user" "user" {
  for_each = local.users

  name         = each.value.name
  email        = each.value.email
  display_name = each.value.display_name
}