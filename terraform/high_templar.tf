module "high_templar" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "younghs+high_templar@amazon.com"
    AccountName  = "Protoss High Templar"
    ManagedOrganizationalUnit = "Protoss Templar Archives (ou-16ba-qu8s13k4)"
    SSOUserEmail     = "younghs+aft-member@amazon.com"
    SSOUserFirstName = "Protoss"
    SSOUserLastName  = "High Templar"
  }

  account_tags = {
    "gateway" = "true"
  }

  custom_fields = {
    group = "gateway"
  }

  account_customizations_name = "gateway"
}
