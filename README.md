📌 Step 1: Set Up AWS Infrastructure (Jenkins, SonarQube, VPN, Subnets)
Before working with Terraform and Jenkins, you need to set up the necessary infrastructure.

1️⃣ Provision AWS EC2 Instances for Jenkins and SonarQube
Jenkins Server
SonarQube Server
Build Server 

terraform/
│── backend.tf
│── main.tf
│── variables.tf
│── dev.tfvars
│── prod.tfvars
│── modules/
│── ├── vpc/
│── ├── ec2/


