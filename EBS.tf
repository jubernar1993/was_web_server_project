resource "aws_ebs_volume" "web_server_volume" {
  availability_zone = "us-east-1b"
  size              = 40

  tags = {
    Name = "web_server_volume"
    Description = "This volume is intented for the web_server_app"
    Owner = "July Bernard"
  }
}