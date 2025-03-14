module "test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "testafttest@gainwelltechnologies.com"
    AccountName               = "test-aft-test"
    ManagedOrganizationalUnit = "GWT-AWS-PRODENG-GBL-OU-sandbox"
    SSOUserEmail              = "gabriel.guiridlian@gainwelltechnologies.com"
    SSOUserFirstName          = "Gabriel"
    SSOUserLastName           = "Guiridlian"
  }

  account_tags = {
    "test-aft" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "test"
  }

  account_customizations_name = "test"
}
