variable "resource_group_name" {
  description = "Name of the Azure Resource Group where the App Service Plan and Web App will be created"
  type        = string
}

variable "location" {
  description = "Azure region in which the App Service Plan and Web App will be deployed"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan (Linux-based) for hosting the Web App"
  type        = string
}

variable "app_name" {
  description = "Name of the Azure Linux Web App to be created"
  type        = string
}

variable "dotnet_version" {
  description = "Version of the .NET runtime to be used in the Web App (e.g. 8.0)"
  type        = string
}

variable "sql_connection_string" {
  description = "SQL connection string provided by the SQL module, used to connect the Web App to Azure SQL Database"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Map of key-value tags to apply to the created resources"
  type        = map(string)
}
