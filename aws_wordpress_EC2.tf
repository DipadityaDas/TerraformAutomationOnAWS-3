resource "aws_instance" "web" {
	ami                    = "ami-7e257211"
	instance_type          = "t2.micro"
	key_name               = aws_key_pair.deployer.key_name
	vpc_security_group_ids = ["${aws_security_group.tfwebSG.id}"]
	subnet_id              = aws_subnet.tfpublicsubnet.id

	tags = {
		Name = "WordPress"
	}
}