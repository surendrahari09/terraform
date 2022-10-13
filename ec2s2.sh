provider "aws" {

    region = "ap-south-1"
    access_key = "AKIA5FIOCDDBTJXBKSH7"
    secret_key = "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"

}
resource "aws_instance" "terraforminstance" {
    ami= "ami-01216e7612243e0ef"
    instance_type = "t2.micro"
    subnet_id = "subnet-097969c3a34812017"

}

resource "aws_s3_bucket" "tfbucket" {

    bucket = "clouearl-tf-bucket"

    tags = {
        Name    = "cloudearl Bucket"
        Environment = "Cloudearl"

    }
}
