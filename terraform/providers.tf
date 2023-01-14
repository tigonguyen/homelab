terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.11"
    }
  }

  backend "s3" {
    bucket         = "tigonguyen-homelab-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "homelab-tfstate-lock"
  }
}

provider "proxmox" {
  pm_api_url = "https://proxmox.scienista.com/api2/json"
}