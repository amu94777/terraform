# output "ami_id" {
#     value = data.aws_ami.centos8.id
# }

output "aws_vpc-info" {
    value = data.aws_vpc.default
}
output "vpc-id" {
    value = data.aws_vpc.default.id
}
output "vpc-arn" {
    value = data.aws_vpc.default.arn
}
