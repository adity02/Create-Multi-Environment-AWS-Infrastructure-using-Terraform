#key pair

resource "aws_key_pair" "deployer" {
    key_name   = "tws-terra-key"
    public_key = file("C:/Users/dell/Desktop/terraform/terraform-practice/terra-key.pub")
}

#VPC

resource "aws_default_vpc" "default" {

}


#security group

resource "aws_security_group" "twssecurity" {
    name = "allow ports"
    description = "this SG is to open ports for EC2 instance"
    vpc_id = aws_default_vpc.default.id  #interpolation

    #incoming
    ingress {
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    #outgoing
    egress {
        description = "This is for outgoing internet"
        from_port =  0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id
    instance_type = "t2.micro"  #free tier 
    key_name = aws_key_pair.deployer.key_name  # key
    security_groups = [aws_security_group.twssecurity.name]   #SG
    tags = {
        Name = "terra-automate" #Name
    }
}