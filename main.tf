terraform {
  backend "local" {
    path = ""
  }
}

provider "kubernetes" {
  config_path = var.kube_config_path
}

variable "kube_config_path" {
  type = string
  description = "Path to kubernetes config file"
  default = "~/.kube/config"
}

