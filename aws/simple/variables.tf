variable "region" {
  default = "ap-southeast-1"
}

variable "amis" {
  type = "map"
  default = {
    "ap-southeast-1" = "ami-06227143764cbe5b6",
    "ap-southeast-2" = "ami-03ba7b79573cdbe5e"
  }
}

variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
  default = "~/.ssh/terraform.key.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "terraform.key"
}

variable "userdata-path" {
  description = "Shell script executed after provisioning the EC2 instance"
  default = "./../config-files/userdata.sh"
}
