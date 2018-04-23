output "master_public_ips" {
  value = "${packet_device.cluster_master.*.access_public_ipv4}"
}

output "master_private_ips" {
  value = "${packet_device.cluster_master.*.access_private_ipv4}"
}

output "worker_public_ips" {
  value = "${packet_device.cluster_worker.*.access_public_ipv4}"
}

output "worker_private_ips" {
  value = "${packet_device.cluster_worker.*.access_private_ipv4}"
}

