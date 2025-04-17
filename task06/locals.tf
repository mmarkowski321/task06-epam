locals {
  name_prefix     = "cmaz-6bbc5609-mod6"
  rg_name         = format("%s-rg", local.name_prefix)
  kv_rg_name      = format("%s-kv-rg", local.name_prefix)
  kv_name         = format("%s-kv", local.name_prefix)
  sql_server_name = format("%s-sql", local.name_prefix)
  sql_db_name     = format("%s-sql-db", local.name_prefix)
  asp_name        = format("%s-asp", local.name_prefix)
  app_name        = format("%s-app", local.name_prefix)
}
