variable "backend_bucket_name_for_rb" {
	default = "demo-bucket-for-remote-backends"
	description = "This is a remote backend bucket for .tf state file"
}
variable "backend_table_name" {
	default = "demo-dynamodb-table"
	description = "This is a dynamodb table for .tf state file state locking"
}
