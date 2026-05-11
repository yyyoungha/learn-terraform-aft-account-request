module "corsair.tf" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "younghs+aft-corsair@amazon.com"
    AccountName  = "Protoss Corsair"
    ManagedOrganizationalUnit = "Protoss Stargate"
    SSOUserEmail     = "younghs+aft-member@amazon.com"
    SSOUserFirstName = "Protoss"
    SSOUserLastName  = "Member"
  }

  account_tags = {
  }

  custom_fields = {
    group = "stargate"
  }

  change_management_parameters = {
    change_requested_by = "Protoss Probe"
    change_reason       = "Account Provisioning Test"
  }
}
