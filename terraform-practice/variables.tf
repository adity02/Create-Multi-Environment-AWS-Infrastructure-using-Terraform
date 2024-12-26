variable "dynamo_table_name" {
    type = string
    default = "tws-free-bootcamp-table"
    description = "This is for DynamoDB table"
}

variable "ami_id" {
    default = "ami-036841078a4b68e14"
    type = string
    description = "This is for AMI ID for EC2"
}