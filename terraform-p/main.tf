provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "vm" {
    ami = "ami-0babef7f814da8951"
    subnet_id = "subnet-0f8722c051cef5b1d"
    instance_type = "t3.micro"
    tags = {
        Name = "my-first-tf-node"

    }
}
