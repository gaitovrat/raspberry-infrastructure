resource "kubernetes_namespace" "cloudflare_namespace" {
  metadata {
    name = "cloudflare-tunnel"
  }
}

resource "kubernetes_config_map" "cloudflare_config_map" {
  metadata {
    name      = "cloudflare-config"
    namespace = kubernetes_namespace.cloudflare_namespace.metadata[0].name
  }

  data = {
    "cloudflare-config.yaml" = "${file(var.config_path)}"
  }
}

resource "kubernetes_secret" "cloudflare_credentials" {
  metadata {
    name      = "cloudflare-credentials"
    namespace = kubernetes_namespace.cloudflare_namespace.metadata[0].name
  }

  data = {
    "credentials.json" = "${file(var.credentials_path)}"
  }
}
