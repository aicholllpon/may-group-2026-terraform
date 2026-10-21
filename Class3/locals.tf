locals {
    common_tags = {
        Name = "subnet-${var.region}"
        Environment = "dev"
        Team = "DevOps"
    }
}