resource "random_password" "sql_password" {
  length  = 16
  special = true
}

resource "azurerm_mssql_server" "sql" {
  name                         = var.sql_server_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  version                      = "12.0"
  administrator_login          = var.sql_admin_name
  administrator_login_password = random_password.sql_password.result
  tags                         = var.tags
}

resource "azurerm_mssql_database" "db" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.sql.id
  sku_name  = var.service_model_database
  tags      = var.tags
}

resource "azurerm_mssql_firewall_rule" "azure_services" {
  name             = "AllowAzure"
  server_id        = azurerm_mssql_server.sql.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

resource "azurerm_mssql_firewall_rule" "verification_ip" {
  name             = var.firewall_rule_name
  server_id        = azurerm_mssql_server.sql.id
  start_ip_address = var.allowed_ip_address
  end_ip_address   = var.allowed_ip_address
}

resource "azurerm_key_vault_secret" "admin_user" {
  name         = var.kv_secret_name_user
  value        = var.sql_admin_name
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "admin_password" {
  name         = var.kv_secret_name_password
  value        = random_password.sql_password.result
  key_vault_id = var.key_vault_id
}
