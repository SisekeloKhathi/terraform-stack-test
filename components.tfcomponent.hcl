required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.8.1"
  }
}

provider "random" "this" {}

component "pets" {
  source = "./modules/pet-module"
  inputs = {
    environment_name = var.environment_name
  }
}