locals {
  storage_account_name = join("", [
    substr(lower(var.prefix), 0, 10), # ensure valid length and lowercase
    random_string.sa_suffix.result
  ])
}
