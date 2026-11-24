resource "britive_constraint" "constraints" {
  for_each = var.constraints

  constraint_type = each.value.constraint_type
  permission_name = each.value.permission_name
  profile_id      = each.value.profile_id
  description     = each.value.description
  expression      = each.value.expression
  name            = each.value.name
  permission_type = each.value.permission_type
  title           = each.value.title
}

