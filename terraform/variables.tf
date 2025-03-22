variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID built with Packer"
  default     = "ami-067c98f833e3df921"
}

variable "my_ip" {
  description = "Your IP for Bastion access"
  default     = "107.142.34.39/32"
}

variable "key_pair_name" {
  default = "id_ed25519_cs521"
}
