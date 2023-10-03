output "web_az" {
	value = aws_instance.web_server.availability_zone
}

output "ebs_volume" {
	value = aws_ebs_volume.web_server_volume.id
}

output "instance_id" {
	value = aws_instance.web_server.id
}