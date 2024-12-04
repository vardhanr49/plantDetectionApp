output "website_endpoint" {
  value = module.s3.bucket_website_endpoint
}

output "web_server_ip" {
  value = module.ec2.web_instance_public_ip
}
