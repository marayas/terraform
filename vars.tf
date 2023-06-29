variable "account_id" {
  type        = string
#  default     = "175331148679"
  description = "user data templeate post install"
}

variable "ami_id" {
  type         = string
  #default      = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-ebs"
  description  = "ID of AMI to use for the instance"
}

variable "aws_subnet" {
  type        = string
#  default     = "subnet-0b2e999c5d7985825"
  description = "subnet oregon account flexcloud with lava"
}

variable "aws_securitygroup" {
  type        = string
  description = "security group from oregon account flexcloud with lava"
}

variable "aws_family" {
  type        = string
  description = "family type to build the ec instance"
}

variable aws_region {
  type        = string
  description = "AWS Region"
}

variable "aws_vm_name" {
  type         = string
  description  = "Hostname instance"
}

variable tag_backup {
  type        = string
  description = "Backup tag"
}

variable tag_ocsappid {
  type        = string
  description = "OCS tag"
}


