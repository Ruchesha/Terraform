resource "aws_s3_bucket" "infra_bucket" {
	bucket = "${var.my_env}-ruch-bucket"
	tags =  {
		Name = "${var.my_env}-bucket"
		Environment = "${var.my_env}"
	}
}
