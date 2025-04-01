terraform {
  backend "local" {
    path = ""
  }
}

provider "kubernetes" {
  config_path = var.kube_config_path
}

module "cloudflare" {
  source = "./modules/cloudflare"
}
