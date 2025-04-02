terraform {
  backend "local" {
    path = ""
  }
}

provider "kubernetes" {
  config_path = var.kube_config_path
}

module "cloudflare" {
  source           = "./modules/cloudflare"
  config_path      = var.cloudflare_config_path
  credentials_path = var.cloudflare_credentials_path
}
