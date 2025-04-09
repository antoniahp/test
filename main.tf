provider "jira" {
  url = var.jira_url
  username = var.jira_username
  token = var.jira_token
}

resource "jira_user" "user" {
  count = length(var.users)
  username = var.users[count.index].username
  name = var.users[count.index].name
  email = var.users[count.index].email
  group = var.users[count.index].group
  active = true
}
