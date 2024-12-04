# modules/ec2/variables.tf
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0866a3c8686eaeeba"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}
variable "instance_name" {
    description = "Name for the EC2 instance"
    default     = "Terraform-Instance"
    type = string
}
variable "subnet_id" {
    description = "subnet id"
    default     = "subnet-04747017ab007f6fe"
    type = string
}
  variable "security_group_id" {
    description = "security group IDs for the EC2 instance"
    default     = ["sg-0b9f3ab83f8f2d4d8"]
    type = list(string)
  }