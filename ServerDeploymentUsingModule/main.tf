provider "packet" {
  auth_token = "${var.auth_token}"
}

module "packet_server" {
  source                   = "modules/server"
  hostname                 = "mg-terraform-test-1"
  tags                     = ["managedbyansible","test"]
}

