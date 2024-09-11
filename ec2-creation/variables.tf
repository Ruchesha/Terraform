variable "ec2_ami_id" {
	default = "ami-0e86e20dae9224db8"
	description = " This is ubuntu ami id for ec2 instance"
	type = string
}

variable "ec2_instance_type" {
	default = "t2.micro"
	type = string
	description = " This is type for EC2 instance"
}
