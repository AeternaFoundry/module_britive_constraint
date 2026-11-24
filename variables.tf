variable "constraints" {
  description = <<EOT
Map of constraints, attributes below
Required:
    - constraint_type
    - permission_name
    - profile_id
Optional:
    - description
    - expression
    - name
    - permission_type
    - title
EOT

  type = map(object({
    constraint_type = string
    permission_name = string
    profile_id      = string
    description     = optional(string)
    expression      = optional(string)
    name            = optional(string)
    permission_type = optional(string)
    title           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.constraints : (
        length(v.profile_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.constraints : (
        length(v.permission_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.constraints : (
        v.permission_type == null || (length(v.permission_type) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.constraints : (
        length(v.constraint_type) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

