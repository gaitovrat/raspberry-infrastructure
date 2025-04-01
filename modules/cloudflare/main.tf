resource "kubernetes_namespace" "cloudflare_namespace" {
  metadata {
    name = "cloudflare-tunnel"
  }
}
