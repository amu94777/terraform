resource "aws_instance" "myec2" {
     count = 5
     ami            =   var.ami_id
     instance_type  =   var.instance-names[count.index] == "mongodb" || var.instance-names[count.      index] == "catalogue" ? "t3.large" : "t2.large"
     vpc_security_group_ids = [aws_security_group.roboshop-all-sg.id]
     tags           =   {
        Name = var.instance-names[count.index]
     }
  
}

resource "aws_security_group" "roboshop-all-sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all"
  }
}