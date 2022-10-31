provider "aws" {

    region = "ap-south-1"
    access_key = "acess-key"
    secret_key = "secret-key"

}
resource "aws_instance" "terraforminstance" {
    ami= "ami-01216e7612243e0ef"
    instance_type = "t2.micro"
    subnet_id = "subnet-097969c3a34812017"
  

}
