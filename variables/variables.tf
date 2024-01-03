variable "instance-name" {
    type    =   string
    default =   "web"
}

variable "ami_id" {
    type    =   string
    default =   "ami-03265a0778a880afb"
}

variable "instance-type" {
    type   =   string
    default=   "t2.small"
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