resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.web_server_volume.id
  instance_id = aws_instance.web_server.id
}