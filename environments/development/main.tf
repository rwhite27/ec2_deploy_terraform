module "ec2" {
  source = "../../modules/ec2"

  ec2_ami           = var.ec2_ami
  ec2_instance_type = var.ec2_instance_type
  ec2_name          = var.ec2_name
}

module "ebs_volume" {
  source = "../../modules/ebs_volume"

  ebs_volume_type = var.ebs_volume_type
  ebs_volume_size = var.ebs_volume_size
  ebs_volume_az   = var.ebs_volume_az

  depends_on = [module.ec2]
}

module "ebs_volume_attachment" {
  source = "../../modules/ebs_volume_attachment"

  volume_id   = module.ebs_volume.ebs_volume_id
  instance_id = module.ec2.instance_id

  depends_on = [module.ec2, module.ebs_volume]
}