module "azure" {
  azure_location = var.azure_location
  ssh_user = var.ssh_user
  ssh_pub_key_file = var.ssh_pub_key_file
  ssh_priv_key_file = var.ssh_priv_key_file
  source = "./modules/azure"
}

