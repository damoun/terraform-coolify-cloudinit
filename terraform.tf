terraform {
  required_version = ">= 1.8.4"
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "3.4.4"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.4"
    }
  }
}
