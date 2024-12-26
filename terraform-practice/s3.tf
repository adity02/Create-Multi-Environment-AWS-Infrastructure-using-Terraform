resource "aws_s3_bucket" "my-bucket" {
    
    bucket = "tws-free-devops-bootcamp-adity"
    tags = {
        Name = "tws-free-devops-bootcamp"
    }    
}