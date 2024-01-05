resource "aws_instance" "myec2" {
     count = 5
     ami            =   var.ami_id
     instance_type  =   var.instance-names[count.index] == "web" || var.instance-names[count.index] == "catalogue" ? "t3.large" : "t2.large"
     #vpc_security_group_ids = [aws_security_group.roboshop-all-sg.id]
     tags           =   {
        Name = var.instance-names[count.index]
     }
  
}
 resource "aws_route53_record" "www" {
   count = 5
  zone_id = var.zone-id
 name    = "${var.instance-names[count.index]}.${var.domain-name}"
  type    = "A"
   ttl     = 1
 records = [var.instance-names[count.index] == "web" || var.instance-names[count.index] == "catalogue" ? aws_instance.myec2[count.index].public_ip : aws_instance.myec2[count.index].private_ip]
 }
