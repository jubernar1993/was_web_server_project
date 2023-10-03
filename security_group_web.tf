resource "aws_security_group" "web_sg" {
	vpc_id = aws_default_vpc.default.id
	description = "this sec_group is for the new web_server"

	dynamic "ingress" {
		for_each = ["80", "443", "22"]
		 content {
			from_port = ingress.value
			 to_port = ingress.value
			 protocol = "tcp"
			 cidr_blocks = ["0.0.0.0/0"]
		 }
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}
