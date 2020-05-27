provider postgresql {
  host            = var.host
  port            = var.port
  database        = var.database
  username        = var.username
  password        = var.password
  sslmode         = var.sslmode
  connect_timeout = var.connect_timeout
  superuser       = false
}

provider random {}
