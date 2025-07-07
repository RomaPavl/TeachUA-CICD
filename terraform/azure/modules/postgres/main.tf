resource "azurerm_postgresql_flexible_server" "main" {
  name                   = var.postgres_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.postgres_admin_user
  administrator_password = var.postgres_admin_password

  sku_name   = var.postgres_sku_name
  storage_mb = var.postgres_storage_mb
  version    = var.postgres_version
  zone       = var.postgres_zone
  # delegated_subnet_id = var.postgres_subnet_id
  # private_dns_zone_id = azurerm_private_dns_zone.postgres.id

  public_network_access_enabled = true
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_azure_services" {
  name            = "allow-azure-internal"
  server_id       = azurerm_postgresql_flexible_server.main.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_ansibble" {
  name             = "allow_ansible"
  server_id        = azurerm_postgresql_flexible_server.main.id
  start_ip_address = "45.12.26.127"
  end_ip_address   = "45.12.26.127"
}

resource "azurerm_postgresql_flexible_server_database" "main" {
  name      = var.postgres_db_name
  server_id = azurerm_postgresql_flexible_server.main.id
}