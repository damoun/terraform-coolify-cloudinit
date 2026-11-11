terraform {
  required_version = "1.17.1"
  required_providers {
    http = {
      source = "hashicorp/http"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
    }
  }
}
