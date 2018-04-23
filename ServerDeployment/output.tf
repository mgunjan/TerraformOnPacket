output "public_ip" {
  value = "${packet_device.sprint_baremetal.*.access_public_ipv4}"
}


output "private_ip" {
  value = "${packet_device.sprint_baremetal.*.access_private_ipv4}"
}


