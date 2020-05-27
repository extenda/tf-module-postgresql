resource "random_password" "password" {
  count            = var.role_password != "" ? 0 : 1
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "postgresql_role" "my_role" {
  name     = var.role_name
  login    = var.role_allow_login
  password = var.role_password != "" ? var.role_password : random_password.password[0].result
}

resource "postgresql_database" "my_db" {
  name              = var.db_name
  owner             = var.role_name
  template          = var.template
  lc_collate        = var.lc_collate
  connection_limit  = var.connection_limit
  allow_connections = var.allow_connections

  depends_on = [postgresql_role.my_role]
}
