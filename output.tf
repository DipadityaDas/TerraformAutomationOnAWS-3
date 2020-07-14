resource "null_resource" "StartBrowsing" {
	depends_on = [
		aws_instance.web,
		aws_instance.mysql
	]
	
	provisioner "local-exec" {
		command = "start chrome ${aws_instance.web.public_ip} "
	}
}