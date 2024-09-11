resource "aws_s3_bucket" "my_bucket" {

        bucket = "practice-bucket-9422"
        tags = {
                Name = "demo bucket"
                Environment = "dev"
        }
}
