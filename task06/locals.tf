locals {
  name_prefix     = "cmaz-6bbc5609-mod6"
  rg_name         = "${local.name_prefix}-rg"
  kv_rg_name      = "${local.name_prefix}-kv-rg"
  kv_name         = "${local.name_prefix}-kv"
  sql_server_name = "${local.name_prefix}-sql"
  sql_db_name     = "${local.name_prefix}-sql-db"
  asp_name        = "${local.name_prefix}-asp"
  app_name        = "${local.name_prefix}-app"
}
