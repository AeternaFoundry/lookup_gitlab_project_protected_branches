data "gitlab_project_protected_branches" "project_protected_branches_lookup" {
  for_each = var.project_protected_branches_lookup

  project_id = each.value.project_id
}

