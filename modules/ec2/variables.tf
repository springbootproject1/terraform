variable "ami" {
  description = "AMI ID for the instances"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name for the instances"
  type        = string
}

variable "jenkins_instance_type" {
  description = "EC2 instance type for Jenkins"
  type        = string
}

variable "build_instance_type" {
  description = "EC2 instance type for the Build server"
  type        = string
}

variable "sonar_instance_type" {
  description = "EC2 instance type for the SonarQube server"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs from the VPC module"
  type        = list(string)
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
}
