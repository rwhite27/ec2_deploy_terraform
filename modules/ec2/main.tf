# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "general" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  # subnet_id  = var.ec2_subnet_id

  tags = {
    Name = var.ec2_name
  }
}