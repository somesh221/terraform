provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-south-1"
}

resource "aws_instance" "myterraform" {
    ami = "ami-08e5424edfe926b43"
    instance_type = "t2.micro"
    key_name = "o"
}
