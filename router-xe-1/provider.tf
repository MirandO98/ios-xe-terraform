terraform {
  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = "~> 1.0.0" # Update this to the actual version you're using
    }
  }
  required_version = ">= 1.0.0"
}

provider "iosxe" {
  username = var.username
  password = var.password
  url      = var.url
}