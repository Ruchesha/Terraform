variable "my_env" {
	      description = " This holds the environment for the infra"
	      type = string
}
variable "ec2_count" {
	      description = "This tell sthe count of instances required"
	      type = number 
}
variable "ec2_ami_id" {
	      description = " This holds the ami id for the ec2"
        type = string
}
variable "ec2_instance_type" {
        description = " This holds the instance type for the ec2"  
        type = string
}
variable "dynamo_table_name" {
	      description = " This holds the dyanmodb table name"
        type = string
}
