module "dev-infra" {
	source = "./infra_template"
	my_env = "dev"
        ec2_count = 1
        dynamo_table_name = "dev-infra-table"
        ec2_instance_type = "t2.micro"
	ec2_ami_id = "ami-0182f373e66f89c85"
}

module "staging-infra" {
        source = "./infra_template"
        my_env = "stg"
        ec2_count = 1
        dynamo_table_name = "stg-infra-table"
        ec2_instance_type = "t2.micro"
        ec2_ami_id = "ami-0182f373e66f89c85"
}

module "prod-infra" {
        source = "./infra_template"
        my_env = "prod"
        ec2_count = 1
        dynamo_table_name = "prod-infra-table"
        ec2_instance_type = "t2.micro"
        ec2_ami_id = "ami-0182f373e66f89c85"
}
