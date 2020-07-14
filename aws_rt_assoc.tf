# Creating an association between subnet and route table
resource "aws_route_table_association" "tfpublicassociation" {
	subnet_id      = aws_subnet.tfpublicsubnet.id
	route_table_id = aws_route_table.tfroute.id

	depends_on = [
		aws_subnet.tfpublicsubnet,
		aws_route_table.tfroute
	]
}
