

# data "aws_ami" "centos8" {
#   most_recent      = true
#   owners           = ["973714476881"]

#   filter {
#     name   = "name"
#     values = ["Centos-8-DevOps-Practice"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# data "aws_ami" "centos8" {
#   most_recent      = true
#   owners           = ["973714476881"]

#   filter {
#     name   = "name"
#     values = ["Centos-8-DevOps-Practice"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }


data "aws_vpc" "default" {
  default = "true"
}