

locals {
  dev_app_rc = [
    {
      action   = "Allow"
      name     = "DEVApplicationRuleCollection"
      priority = 600
      rule = [
        {
          name             = "AllowAll"
          description      = "Allow traffic to Microsoft.com"
          source_addresses = ["10.1.0.0/24"]
          protocols = [
            {
              port = 443
              type = "Https"
            }
          ]
          destination_fqdns = ["microsoft.com"]
        }
      ]
    }
  ]
}