provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-south-1"
    alias = "mumbai"
      
}

provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
    alias = "usa"
}

resource "aws_instance" "north" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t2.micro"
    provider = "aws.usa"

}

resource "aws_instance" "mumbai" {
    ami = "ami-0da59f1af71ea4ad2"
    instance_type = "t2.micro"
    provider = "aws.mumbai"
}
