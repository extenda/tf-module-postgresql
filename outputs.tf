output role_password {
  value     = var.role_password != "" ? var.role_password : random_password.password[0].result
  sensitive = true
}

output role_name {
  value = var.role_name
}

output db_name {
  value = var.db_name
}
