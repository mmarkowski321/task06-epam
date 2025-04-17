output "sql_connection_string" {
  description = "Sensitive ADO.NET connection string to the Azure SQL Database with SQL authentication"
  sensitive   = true
  value = format(
    "Server=tcp:%s,1433;Initial Catalog=%s;Persist Security Info=False;User ID=%s;Password=%s;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;",
    azurerm_mssql_server.sql.fully_qualified_domain_name,
    azurerm_mssql_database.db.name,
    var.sql_admin_name,
    random_password.sql_password.result
  )
}


output "sql_server_fqdn" {
  description = "Fully qualified domain name of the Azure SQL Server (FQDN)"
  value       = azurerm_mssql_server.sql.fully_qualified_domain_name
}
