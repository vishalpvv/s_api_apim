resource "azurerm_api_management" "apim" {
  name                = "we-dev-apim01"
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = "NAME"
  publisher_email     = "name@email.com"

  sku_name = "Developer_1"

  policy {
    xml_content = <<XML
<policies>
    <inbound />
    <backend>
        <forward-request />
    </backend>
    <outbound />
    <on-error />
</policies>
XML

  }
}