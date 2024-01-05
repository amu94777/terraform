locals {
    instance_type = var.instance-names[count.index] == "web" || var.instance-names[count.index] == "catalogue" ? "t3.large" : "t2.large"
}