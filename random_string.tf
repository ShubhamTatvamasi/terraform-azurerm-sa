resource "random_string" "sa_suffix" {
  length  = 6
  upper   = false
  lower   = true
  numeric = true
  special = false
}
