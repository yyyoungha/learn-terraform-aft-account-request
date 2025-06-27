module "dragoon" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "younghs+aft-dragoon@amazon.com"
    AccountName               = "Protoss Dragoon"
    ManagedOrganizationalUnit = "Protoss Gateway"
    SSOUserEmail              = "younghs+aft-member@amazon.com"
    SSOUserFirstName          = "Protoss"
    SSOUserLastName           = "Member"
  }

  account_tags = {
    "gateway" = "true"
    "type" = "ground"
  }

  change_management_parameters = {
    change_requested_by = "Protoss Probe"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "gateway"
  }

  account_customizations_name = "gateway"
}
