# Create a new SSH key
resource "packet_ssh_key" "key1" {
  name       = "${var.ssh-keyname}"
  public_key = "${file("/Users/zt385835/.ssh/id_rsa.pub")}"
}
