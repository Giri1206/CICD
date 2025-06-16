output "pb_sn" {
    value = aws_subnet.public_sn.id  
}
output "secg" {
  value = aws_security_group.sg.id
}