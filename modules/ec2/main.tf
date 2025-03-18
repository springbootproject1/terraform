resource "aws_instance" "jenkins" {
  ami           = var.ami
  instance_type = var.jenkins_instance_type
  subnet_id     = element(var.public_subnets, 0)
  key_name      = var.key_name

  tags = {
    Name = "${var.environment}-jenkins"
  }
}

resource "aws_instance" "build" {
  ami           = var.ami
  instance_type = var.build_instance_type
  subnet_id     = element(var.public_subnets, 0)
  key_name      = var.key_name

  root_block_device {
    volume_size = 15
  }

  tags = {
    Name = "${var.environment}-build"
  }
}

resource "aws_instance" "sonarqube" {
  ami           = var.ami
  instance_type = var.sonar_instance_type
  subnet_id     = element(var.public_subnets, 0)
  key_name      = var.key_name

  tags = {
    Name = "${var.environment}-sonarqube"
  }
}
