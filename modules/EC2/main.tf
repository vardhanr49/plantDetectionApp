# modules/ec2/main.tf {
resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.security_group_id
    associate_public_ip_address = true

    provisioner "remote-exec" {
        inline = [ 
            "sudo yum update -y",
            "sudo yum install -y httpd",
            "sudo systemctl start httpd",
            "sudo systemctl enable httpd",
         ]
      
    }
  
}
