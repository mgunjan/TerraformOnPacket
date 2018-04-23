variable "auth_token" {
  description    = "api authentication key for the account generated on Packet UI" 
} 

variable "packet_hostname" {
  description    = "name of the server"
}

variable "packet_os_type" {
  description    = "operating system for baremetal server."
  default        = "ubuntu_16_04"
}

variable "project_id" {
  description    = "project id assigned by packet"
}

variable "packet_server_type" {
  description    = "server type based on packet plan. Choose from following options"
  default        = "t1.small"
}

variable "packet_facility" {
  description    = "packet server facility location"
  default        = "ewr1"
}

variable "packet_tags" {
  description    = "tags assigned to the server"
  type           = "list"
  default        = ["managedbytf"]
} 

variable "packet_subnet_size" {
  description    = "public ipv4 subnet size to be assigned on server"
  default        = "31"          
}

variable "server_count" {
  description    = "number of servers to be deployed"
  default        = "1"
}
