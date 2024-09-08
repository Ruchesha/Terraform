resource "aws_key_pair" "my_ssh_key" {
        key_name = "terra-key"
        public_key = file("/Users/ruchalisudke/terra-key.pub")
}
resource "aws_default_vpc" "default" {
}

resource "aws_security_group" "new_sg" {
        name = "terra-sg"
        description = "This is a security group used to practise terraform"
        vpc_id = aws_default_vpc.default.id

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
                description = "This is for SSH Access"
        }
        ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
                description = "This is for HTTP Access"
        }

        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
                description = "This is for outside world requests from instance"
        }
}
resource "aws_instance" "practiceinstance" {
#       count = 1
        tags = {
                Name = "dev-env"
        }
        ami = "ami-0e86e20dae9224db8"
        instance_type = "t2.micro"
        key_name = aws_key_pair.my_ssh_key.key_name
        security_groups = [aws_security_group.new_sg.name]
}
         
resource "aws_ec2_instance_state" "my_state" {
        instance_id = aws_instance.practiceinstance.id
        state = "running"
}
                
