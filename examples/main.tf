# Example, should give the user an idea about how to use this module.
# This code is found in the examples directory.
terraform {
  required_version = ">= 1.8.4"
}

module "coolify" {
  source = "../"
}

output "user_data" {
  value = module.coolify.user_data
}
