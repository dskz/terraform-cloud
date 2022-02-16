module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
  tags = {
    Name = "HelloWorld"
    Env = "Dev"
    Created_by = "DevOps"
  }
}