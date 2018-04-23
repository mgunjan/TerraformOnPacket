variable "auth_token" {
  description    = "api authentication key for the account generated on Packet UI" 
} 

variable "ssh-keyname" {
  description    = "Name assigned to SSH key for Packet API"
  default        = "my-mac-key"
}

variable "ssh-keyfile" {
  description    = "file location of ssh public key on local system"
  default        = "~/.ssh/id_rsa.pub"
}

var " packet-prjname" {
  description    = "Project name assigned to Packet"
  default        = "sdnmeetupdemo"
}
