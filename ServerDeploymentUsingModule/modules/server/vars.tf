variable "os_type" {
  description              = "operating system for baremetal server."
  default                  = "ubuntu_16_04"
}

variable "project_id" {
  description              = "project id assigned by packet"
  default                  = "f311f8c4-0ad3-43ab-adf2-39e629b0a794"
}

variable "server_type" {
  description              = "server type based on packet plan. Choose from following options 'baremetal_0' 'baremetal_2' 'baremetal_2a'"
  default                  = "t1.small"
}

variable "p_facility" {
  description              = "packet server facility location. Choose from option 'ewr1' 'sjc1'"
  default                  = "ewr1"
}

variable "hostname" {
  description              = "name of the server"
}

variable "tags" {
  description              = "tags assigned to the server"
  type                     = "list"
} 

