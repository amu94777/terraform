
variable "ami_id" {
    type    =   string
    default =   "ami-03265a0778a880afb"
}

variable "instance-type" {
    type   =   string
    #default=   "t2.small"
}

variable "tags" {
    type    =  map
    default = {
        name  =  "hello terraform"
        project = "roboshop"
        environment = "dev"
        component = "web"
        
    }
}

variable "cidr_blocks" {
    type  = list
    default = ["0.0.0.0/0"]
}

variable "instance-names" {
    type = list
    default = [ "web" , "mysql" , "shipping" , "catalogue" , "user" ]
}
