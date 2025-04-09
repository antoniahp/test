variable "jira_url" {
  description = "Jira url"
  type = string
}

variable "jira_username" {
  description = "The jira username"
  type = string
}

variable "jira_token" {
  description = "Jira API token"
  type = string
}

variable "users" {
  description = "Jira users list"
  type = list(object({
    username = string
    name = string
    email = string
    group = string
  }))
}
