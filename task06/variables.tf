variable "region" {
  description = "Azure region where all resources will be deployed (e.g. East US)"
  type        = string
}

variable "allowed_ip_address" {
  description = "IP address that will be allowed to access the Azure SQL Server"
  type        = string
}

variable "sql_admin_name" {
  description = "Username for the Azure SQL Server administrator"
  type        = string
}

variable "service_model_database" {
  description = "Service tier (SKU) for the Azure SQL Database, e.g. S2"
  type        = string
}

variable "firewall_rule_name" {
  description = "Name of the firewall rule that allows a specific IP to access the SQL Server"
  type        = string
}

variable "kv_secret_name_user" {
  description = "Name of the Key Vault secret where the SQL admin username will be stored"
  type        = string
}

variable "kv_secret_name_password" {
  description = "Name of the Key Vault secret where the SQL admin password will be stored"
  type        = string
}

variable "dotnet_version" {
  description = "Version of .NET to use for the Linux Web App (e.g. 8.0)"
  type        = string
}

variable "tags" {
  description = "Map of tags to apply to all resources (e.g. { Creator = \"your_email@example.com\" })"
  type        = map(string)
}
