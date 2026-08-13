output "ec2_public_ip" {
  value = aws_instance.myrefinstance.public_ip
}

output "ec2_availability_zone" {
  value = aws_instance.myrefinstance.availability_zone
}
