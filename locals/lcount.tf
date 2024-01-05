resource "aws_instance" "myec2" {
     count = 5
     ami            =   var.ami_id
     instance_type  =  local.instance_type
     #vpc_security_group_ids = [aws_security_group.roboshop-all-sg.id]
     tags           =   {
        Name = var.instance-names[count.index]
     }
}     
  