output "sql_connection_string" {
  value     = "Server=${azurerm_mssql_server.sql.fully_qualified_domain_name};Database=${azurerm_mssql_database.db.name};User ID=${var.sql_admin_name};Password=${random_password.sql_password.result};Encrypt=true;Connection Timeout=30;"
  sensitive = true
}

output "sql_server_fqdn" {
  value = azurerm_mssql_server.sql.fully_qualified_domain_name
}
