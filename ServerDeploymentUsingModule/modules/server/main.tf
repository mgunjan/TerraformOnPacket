resource "packet_device" "example" {
  hostname                 = "${var.hostname}"
  operating_system         = "${var.os_type}"
  plan                     = "${var.server_type}"
  facility                 = "${var.p_facility}"
  project_id               = "${var.project_id}"
  billing_cycle            = "hourly"
  public_ipv4_subnet_size  = "31"
  always_pxe               = "false"
  tags                     = "${var.tags}"
  user_data                = "${file("cloud-init")}"
}

