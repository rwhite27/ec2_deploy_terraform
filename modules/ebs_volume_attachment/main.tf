resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdh"
  volume_id   = var.volume_id
  instance_id = var.instance_id
}

