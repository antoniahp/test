
variable "jira_url" {
  description = "The URL of the Jira instance"
  type        = string
}


variable "jira_token" {
  description = "The API token for Jira authentication"
  type        = string
  sensitive   = true
}

variable "users" {
  description = "List of users to create in Jira"
  type = list(object({
    name         = string
    email        = string
    display_name = string

  }))
} 