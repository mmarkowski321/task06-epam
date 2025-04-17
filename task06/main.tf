provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = local.rg_name
  location = var.region
  tags     = var.tags
}

data "azurerm_key_vault" "kv" {
  name                = local.kv_name
  resource_group_name = local.kv_rg_name
}

module "sql" {
  source                  = "./modules/sql"
  resource_group_name     = azurerm_resource_group.main.name
  location                = var.region
  sql_server_name         = local.sql_server_name
  sql_db_name             = local.sql_db_name
  service_model_database  = var.service_model_database
  firewall_rule_name      = var.firewall_rule_name
  allowed_ip_address      = var.allowed_ip_address
  sql_admin_name          = var.sql_admin_name
  key_vault_id            = data.azurerm_key_vault.kv.id
  kv_secret_name_user     = var.kv_secret_name_user
  kv_secret_name_password = var.kv_secret_name_password
  tags                    = var.tags
}

module "webapp" {
  source                = "./modules/webapp"
  resource_group_name   = azurerm_resource_group.main.name
  location              = var.region
  app_service_plan_name = local.asp_name
  app_name              = local.app_name
  dotnet_version        = var.dotnet_version
  sql_connection_string = module.sql.sql_connection_string
  tags                  = var.tags
}
