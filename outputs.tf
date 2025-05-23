output "instance_ids" {
  value = module.ec2_instance.instance_ids
}

output "public_ips" {
  value = module.ec2_instance.public_ips
}
