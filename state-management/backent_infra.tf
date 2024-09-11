resource "aws_s3_bucket" "my_backend_bucket" {
	bucket = var.backend_bucket_name_for_rb

	tags = {
		name = var.backend_bucket_name_for_rb
	}
}

resource "aws_dynamodb_table" "my_db_table" {
	name = var.backend_table_name
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	attribute {
		name = "LockID"
		type = "S"
	}
	tags = {
                name = var.backend_table_name
       }
}
