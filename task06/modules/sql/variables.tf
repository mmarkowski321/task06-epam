variable "resource_group_name" {
  description = "Name of the Resource Group where SQL Server and Database will be deployed"
  type        = string
}

variable "location" {
  description = "Azure region for the SQL resources"
  type        = string
}

variable "sql_server_name" {
  description = "SQL Server name"
  type        = string
}

variable "sql_db_name" {
  description = "SQL Database name"
  type        = string
}

variable "service_model_database" {
  description = "SQL Database service model "
  type        = string
}

variable "firewall_rule_name" {
  description = "SQL Server Firewall Rule name"
  type        = string
}

variable "allowed_ip_address" {
  description = "IP address allowed to access the SQL Server"
  type        = string
}

variable "sql_admin_name" {
  description = "Username for the SQL Server administrator"
  type        = string
}

variable "key_vault_id" {
  description = "ID of the existing Azure Key Vault where the secrets will be stored"
  type        = string
}

variable "kv_secret_name_user" {
  description = "Name of the Key Vault secret where SQL admin username will be stored"
  type        = string
  default     = "sql-admin-name"
}

variable "kv_secret_name_password" {
  description = "Name of the Key Vault secret where SQL admin password will be stored"
  type        = string
  default     = "sql-admin-password"
}

variable "tags" {
  description = "Map of tags to apply to all resources"
  type        = map(string)
}
