output "sql_server_fqdn" {
  description = "Fully qualified domain name of the Azure SQL Server"
  value       = module.sql.sql_server_fqdn
}

output "app_hostname" {
  description = "Hostname of the deployed Azure Linux Web App"
  value       = module.webapp.app_hostname
}

output "sql_connection_string" {
  description = "Sensitive SQL connection string from SQL module"
  value       = module.sql.sql_connection_string
  sensitive   = true
}
