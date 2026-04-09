terraform {
  required_version = "1.14.8"
  required_providers {
    http = {
      source = "hashicorp/http"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
    }
  }
}
