resource "packet_device" "sprint_baremetal" {
  count                    = "${var.server_count}"
  hostname                 = "${var.packet_hostname}-${count.index}"
  tags                     = "${var.packet_tags}"
  operating_system         = "${var.packet_os_type}" 
  plan                     = "${var.packet_server_type}"
  facility                 = "${var.packet_facility}"
  project_id               = "${var.project_id}"
  billing_cycle            = "hourly"
  public_ipv4_subnet_size  = "${var.packet_subnet_size}"
  always_pxe               = "false"
  user_data                = "${file("cloud-init")}"
}

