
resource "aws_ebs_volume" "root" {
  availability_zone = var.ebs_volume_az
  size              = var.ebs_volume_size
  type              = var.ebs_volume_type

  #   tags = local.tags
}
