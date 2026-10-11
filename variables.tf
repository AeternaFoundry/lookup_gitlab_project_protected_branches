variable "project_protected_branches_lookup" {
  description = <<EOT
Map of project_protected_branches_lookup, attributes below
Required:
    - project_id
EOT

  type = map(object({
    project_id = string
  }))
}

