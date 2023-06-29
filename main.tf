# Resource to create EC2 RHEL custom AMI

data "aws_ami" "amzl2" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn2-ami-kernel*ebs"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  #owners = ["137112412989"]
}

resource "aws_instance" "vm1" {
  instance_type          = var.aws_family
  ami                    = data.aws_ami.amzl2.id
  subnet_id              = var.aws_subnet
  vpc_security_group_ids = [var.aws_securitygroup]
  associate_public_ip_address = false
  
  root_block_device {
   delete_on_termination = true
   volume_type = "gp3"
     tags = {
    Name = var.aws_vm_name
    backup = var.tag_backup
    ocsappid = var.tag_ocsappid
    name = var.aws_vm_name 
  }
  }

  key_name               = "aws_key"
}

resource "aws_ebs_encryption_by_default" "ebs_encrypt" {
  enabled = true
}

## * This section will print the ip address of the virtual machine
output "vm1_private_ip_address" {
  value = aws_instance.vm1.private_ip
}

output "vm1_private_dns" {
  value = aws_instance.vm1.private_dns
}
