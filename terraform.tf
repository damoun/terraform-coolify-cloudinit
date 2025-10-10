terraform {
  required_version = ">= 1.8.4"
  required_providers {
    http = {
      source = "hashicorp/http"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
    }
  }
}
