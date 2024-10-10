terraform {
  required_providers {
    gandi = {
      source  = "go-gandi/gandi"
      version = "= 2.3.0"
    }
  }
}

variable "gandi_url" {
  type = string
}

variable "gandi_token" {
  type = string
}

provider "gandi" {
  url                   = var.gandi_url
  personal_access_token = var.gandi_token
}
