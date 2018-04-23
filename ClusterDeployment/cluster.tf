resource "packet_device" "cluster_master" {
  count                    = "${var.master_count}"
  hostname                 = "${var.master_hostname}-${count.index}"
  tags                     = "${var.master_tags}"
  operating_system         = "${var.packet_os_type}" 
  plan                     = "${var.master_server_type}"
  facility                 = "${var.packet_facility}"
  project_id               = "${var.project_id}"
  billing_cycle            = "hourly"
  public_ipv4_subnet_size  = "${var.master_subnet_size}"
  always_pxe               = "false"
  user_data                = "${file("cloud-init")}"
}

resource "packet_device" "cluster_worker" {
  count                    = "${var.worker_count}"
  hostname                 = "${var.worker_hostname}-${count.index}"
  tags                     = "${var.worker_tags}"
  operating_system         = "${var.packet_os_type}" 
  plan                     = "${var.worker_server_type}"
  facility                 = "${var.packet_facility}"
  project_id               = "${var.project_id}"
  billing_cycle            = "hourly"
  public_ipv4_subnet_size  = "${var.worker_subnet_size}"
  always_pxe               = "false"
  user_data                = "${file("cloud-init")}"
}
