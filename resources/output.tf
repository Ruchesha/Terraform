output "ec2_ip" {
        value = aws_instance.practiceinstance.public_ip
}
