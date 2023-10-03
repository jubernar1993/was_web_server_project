resource "aws_instance" "web_server" {
	ami = var.web_server_ami
	instance_type = var.instance_type
	vpc_security_group_ids = [aws_security_group.web_sg.id]
	tags = {
		Name = "web_server1"
		Description = "this is a test to create the new web server"
		Owner = "July Bernard"
	}
	user_data = "${file("file.sh")}"
}