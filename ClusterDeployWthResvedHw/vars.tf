variable "auth_token" {
  description    = "api authentication key for the account generated on Packet UI" 
} 

variable "project_id" {
  description    = "project id assigned by packet"
}

variable "packet_facility" {
  description    = "packet server facility location"
  default        = "ewr1"
}

variable "packet_os_type" {
  description    = "operating system for baremetal server."
  default        = "ubuntu_16_04"
}

variable "master_hostname" {
  description    = "name of the server"
}

variable "master_server_type" {
  description    = "server type based on packet plan. Choose from following options"
  default        = "t1.small"
}

variable "master_tags" {
  description    = "tags assigned to the server"
  type           = "list"
  default        = ["managedbytf"]
} 

variable "master_subnet_size" {
  description    = "public ipv4 subnet size to be assigned on server"
  default        = "31"          
}

variable "master_count" {
  description    = "number of servers to be deployed"
  default        = "1"
}

variable "worker_hostname" {
  description    = "name of the server"
}

variable "worker_server_type" {
  description    = "server type based on packet plan. Choose from following options"
  default        = "t1.small"
}

variable "worker_tags" {
  description    = "tags assigned to the server"
  type           = "list"
  default        = ["managedbytf"]
} 

variable "worker_subnet_size" {
  description    = "public ipv4 subnet size to be assigned on server"
  default        = "31"          
}

variable "worker_count" {
  description    = "number of servers to be deployed"
  default        = "1"
}
