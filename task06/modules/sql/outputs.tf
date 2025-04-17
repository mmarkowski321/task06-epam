output "sql_connection_string" {
  description = "Sensitive ADO.NET connection string to the Azure SQL Database with SQL authentication"
  value       = "Server=${azurerm_mssql_server.sql.fully_qualified_domain_name};Database=${azurerm_mssql_database.db.name};User ID=${var.sql_admin_name};Password=${random_password.sql_password.result};Encrypt=true;Connection Timeout=30;"
  sensitive   = true
}

output "sql_server_fqdn" {
  description = "Fully qualified domain name of the Azure SQL Server (FQDN)"
  value       = azurerm_mssql_server.sql.fully_qualified_domain_name
}
