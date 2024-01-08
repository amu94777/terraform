variable "ami-id" {
    default = "ami-03265a0778a880afb"
}

variable "instance-names" {
    type = map
    default = {
        dev = "t2.micro"
        prod = "t3.small"
    }
}

 variable "tags" {
    type = map
     default = {
     Name = "helloworkspace"
    
 }
 }
