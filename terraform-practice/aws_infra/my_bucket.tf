#s3 bucket

resource "aws_s3_bucket" "my-bucket" {
    #args
    bucket = "${var.my-env}-tws-free-devops-bootcamp"
    tags = {
        Name = "${var.my-env}-tws-free-devops-bootcamp"
        environment = var.my-env
    }
}