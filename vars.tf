# Provider Variables
variable host {
  type        = string
  description = "The address for the postgresql server connection."
}

variable port {
  type        = string
  default     = 5432
  description = "The port for the postgresql server connection. The default is 5432."
}

variable database {
  type        = string
  default     = "default"
  description = "Database to connect to. The default is default."
}

variable username {
  type        = string
  default     = "default"
  description = "Username for the server connection. The default is default."
}

variable password {
  type        = string
  description = "Password for the server connection."
}

variable sslmode {
  type        = string
  default     = "require"
  description = "Set the priority for an SSL connection to the server. disable, require, verify-ca, or verify-full"
}

variable connect_timeout {
  type        = string
  default     = 15
  description = "Maximum wait for connection, in seconds. The default is 15s. Zero or not specified means wait indefinitely."
}

# Database Variables
variable db_name {
  type        = string
  description = "The name of the database. Must be unique on the PostgreSQL server instance where it is configured."
}

variable template {
  type        = string
  default     = "template0"
  description = "The name of the template database from which to create the database, or DEFAULT to use the default template (template0). NOTE: the default in Terraform is template0, not template1. Changing this value will force the creation of a new resource as this value can only be changed when a database is created."
}

variable lc_collate {
  type        = string
  default     = "C"
  description = "Collation order (LC_COLLATE) to use in the database. This affects the sort order applied to strings, e.g. in queries with ORDER BY, as well as the order used in indexes on text columns. If unset or set to an empty string the default collation is set to C. If set to DEFAULT Terraform will use the same collation order as the specified template database. Changing this value will force the creation of a new resource as this value can only be changed when a database is created."
}

variable connection_limit {
  type        = string
  default     = -1
  description = "How many concurrent connections can be established to this database. -1 (the default) means no limit."
}

variable allow_connections {
  type        = string
  default     = true
  description = "If false then no one can connect to this database. The default is true, allowing connections (except as restricted by other mechanisms, such as GRANT or REVOKE CONNECT)."
}

# Role Variables
variable role_name {
  type        = string
  description = "The name of the role. Must be unique on the PostgreSQL server instance where it is configured."
}

variable role_allow_login {
  type        = string
  default     = false
  description = "Defines whether role is allowed to log in. Roles without this attribute are useful for managing database privileges, but are not users in the usual sense of the word. Default value is false."
}

variable role_password {
  type        = string
  default     = ""
  description = "Role password (default is random-generated)"
}
