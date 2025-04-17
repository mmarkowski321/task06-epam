output "app_hostname" {
  description = "Hostname (URL) of the deployed Azure Linux Web App"
  value       = azurerm_linux_web_app.app.default_hostname
}
