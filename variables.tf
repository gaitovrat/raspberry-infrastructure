variable "kube_config_path" {
  type        = string
  description = "Path to kubernetes config file"
}

variable "kube_config_context" {
  type        = string
  description = "Kubernetes context"
  default     = "default"
}

variable "cloudflare_config_path" {
  type        = string
  description = "Path to cloudflare config file"
}

variable "cloudflare_credentials_path" {
  type        = string
  description = "Path to cloudflare credentials file"
}
