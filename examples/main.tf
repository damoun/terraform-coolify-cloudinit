# Example, should give the user an idea about how to use this module.
# This code is found in the examples directory.
terraform {
  required_version = ">= 1.8.4"
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.47.0"
    }
  }
}

provider "hcloud" {}

module "coolify" {
  source = "../"
}

resource "hcloud_server" "coolify" {
  name        = "coolify"
  image       = "ubuntu-24.04"
  server_type = "cax11"
  location    = "nbg1"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  user_data = module.coolify.user_data
}
