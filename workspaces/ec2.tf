 resource "aws_instance" "www" {
   ami           = var.ami-id
   instance_type = lookup(var.instance-names,terraform.workspace)

  tags = var.tags
    
  }