resource "aws_instance" "www" {
    for_each = var.instance_names
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }
}

 output "instance-info" {
     value = aws_instance.www
}

resource "aws_route53_record" "www" {
   for_each = aws_instance.www
  zone_id = var.zone_id
 name    = "${each.key}.${var.domain-name}"
  type    = "A"
   ttl     = 1
 records = [ each.key == "web" || each.key == "catalogue" ? each.value.public_ip : each.value.private_ip ]
 }
