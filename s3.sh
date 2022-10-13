resource "aws_s3_bucket" "tfbucket" {

    bucket = "clouearl-tf-bucket"

    tags = {
        Name    = "cloudearl Bucket"
        Environment = "Cloudearl"

    }
}
