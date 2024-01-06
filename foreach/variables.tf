variable "instance_names" {
    type = map
    default = {
        web = "t2.small"
        catalogue = "t2.small"
        cart = "t2.small"
        mongodb = "t3.large"
        shipping = "t3.large"
    }
}  

variable "ami_id" {
    default = "ami-03265a0778a880afb"
}

variable "zone_id" {
    default = "Z04538903T1NEGY1K95YE"
}

variable "domain-name" {
    default = "jaya123.shop"
}