output "ec2_instance_ip" {
  value = aws_instance.dev.public_ip
}
