variable "environment" {
  description = "The deployment environment (dev, prod, etc.)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "ami" {
  description = "AMI ID to use for the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name for accessing instances"
  type        = string
}

variable "jenkins_instance_type" {
  description = "EC2 instance type for the Jenkins server"
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
