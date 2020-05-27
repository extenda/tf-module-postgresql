output role_password {
  value     = random_password.password.result
  sensitive = true
}

output role_name {
  value = var.role_name
}

output db_name {
  value = var.db_name
}
