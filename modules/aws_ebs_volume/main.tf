resource "aws_ebs_volume" "ebs_general_volume" {
  availability_zone = var.ebs_volume_az
  size              = var.ebs_volume_size
  type              = var.ebs_volume_type

  tags = {
    Name = var.ebs_volume_name
  }
}
