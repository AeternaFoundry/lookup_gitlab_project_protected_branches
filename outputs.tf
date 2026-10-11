output "project_protected_branches_lookup_id" {
  description = "Map of id values across all project_protected_branches_lookup, keyed the same as var.project_protected_branches_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_protected_branches.project_protected_branches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_protected_branches_lookup_project_id" {
  description = "Map of project_id values across all project_protected_branches_lookup, keyed the same as var.project_protected_branches_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.gitlab_project_protected_branches.project_protected_branches_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_protected_branches_lookup_protected_branches" {
  description = "Map of protected_branches values across all project_protected_branches_lookup, keyed the same as var.project_protected_branches_lookup except keys with no protected_branches are omitted"
  value       = { for k, v in data.gitlab_project_protected_branches.project_protected_branches_lookup : k => v.protected_branches if v.protected_branches != null && length(v.protected_branches) > 0 }
}

