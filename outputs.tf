# Auto-generated producer outputs for DAG wiring (mpaas-ai-module migration).
# Exposes id / name / connection attributes other resources consume.

output "example_id" {
  value = azurerm_windows_web_app.example.id
}
output "example_name" {
  value = azurerm_windows_web_app.example.name
}
output "example_default_hostname" {
  value = azurerm_windows_web_app.example.default_hostname
}
output "endpoint_id" {
  value = azurerm_private_endpoint.endpoint.id
}
output "endpoint_name" {
  value = azurerm_private_endpoint.endpoint.name
}
