variable "my-env" {
    description = "this is the environment for infra"
    type = string
}

variable"ami_id {
    description =  "This is the AMI Id for EC2"
    type = string
}

variable "instance_type" {
    description = "This is the instance type for EC2"
    type = string
}

variable "instance_count" { 
    description = "This is the count type for EC2"
    type = number
}