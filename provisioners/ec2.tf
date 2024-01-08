 resource "aws_instance" "www" {
   ami           = var.ami_id
   instance_type = "t2.small"
  vpc_security_group_ids = [aws_security_group.roboshop-all-sg.id]
  tags = {
    Name = "provisioners"
  }
 
  provisioner "local-exec" {
     command = "echo the server private ip address is ${self.public_ip}"
   } 
  
  
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'this is from remote exec' > /tmp/remote.txt",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
 }
 

resource "aws_security_group" "roboshop-all-sg" {
  name        = "provisioners"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id


  ingress {
    description      = "remote exec"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "remote exec"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
    
  
  