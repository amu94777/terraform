resource "aws_instance" "www" {
    for_each = var.instance_names
    ami = data.aws_ami.centos8.id
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
 records = [ startswith(each.key,"web") ? each.value.public_ip : each.value.private_ip ]
 }
