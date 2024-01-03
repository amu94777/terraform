resource "aws_instance" "myec2" {
    name           =   var.instance-name
    ami            =   var.ami_id
    instance_type  =   var.instance-type
    tags           =   var.tags
  
}