output "jenkins_instance_id" {
  description = "ID of the Jenkins instance"
  value       = aws_instance.jenkins.id
}

output "build_instance_id" {
  description = "ID of the Build server instance"
  value       = aws_instance.build.id
}

output "sonarqube_instance_id" {
  description = "ID of the SonarQube instance"
  value       = aws_instance.sonarqube.id
}
