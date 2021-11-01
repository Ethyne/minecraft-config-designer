output "public_ip" {
  value = ${module.ec2_minecraft.outputs.public_ip} 
}
