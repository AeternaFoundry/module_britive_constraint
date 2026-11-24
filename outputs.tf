output "constraints_id" {
  description = "Map of id values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.id }
}
output "constraints_constraint_type" {
  description = "Map of constraint_type values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.constraint_type }
}
output "constraints_description" {
  description = "Map of description values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.description }
}
output "constraints_expression" {
  description = "Map of expression values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.expression }
}
output "constraints_name" {
  description = "Map of name values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.name }
}
output "constraints_permission_name" {
  description = "Map of permission_name values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.permission_name }
}
output "constraints_permission_type" {
  description = "Map of permission_type values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.permission_type }
}
output "constraints_profile_id" {
  description = "Map of profile_id values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.profile_id }
}
output "constraints_title" {
  description = "Map of title values across all constraints, keyed the same as var.constraints"
  value       = { for k, v in britive_constraint.constraints : k => v.title }
}

