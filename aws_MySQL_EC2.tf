resource "aws_instance" "mysql" {
	ami                    = "ami-08706cb5f68222d09"
	instance_type          = "t2.micro"
	key_name               = aws_key_pair.deployer.key_name
	vpc_security_group_ids = ["${aws_security_group.tfmysqlSG.id}"]
	subnet_id              = aws_subnet.tfprivatesubnet.id
	
	tags = {
		Name = "MySQL"
	}
}