resource "aws_dynamodb_table" "my_db_table" {
        name = "${var.my_env}-${var.dynamo_table_name}"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "productID"
        attribute {
                name = "productID"
                type = "S"
        }
        tags = {
                name = "${var.my_env}-${var.dynamo_table_name}"
       }
}
