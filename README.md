📌 Step 1: Set Up AWS Infrastructure (Jenkins, SonarQube, VPN, Subnets)
Before working with Terraform and Jenkins, you need to set up the necessary infrastructure.

1️⃣ Provision AWS EC2 Instances for Jenkins and SonarQube

Jenkins Server

SonarQube Server

Build Server 

terraform/
├── backend.tf
├── main.tf
├── variables.tf
├── dev.tfvars
├── prod.tfvars
└── modules/
    ├── vpc/
    │    ├── main.tf
    │    ├── variables.tf
    │    └── outputs.tf
    └── ec2/
         ├── main.tf
         ├── variables.tf
         └── outputs.tf



Usage Overview
Clone the Repository Locally:
git clone https://github.com/<YOUR_GITHUB_USERNAME>/terraform-infra.git
cd terraform-infra
Initialize Terraform:
(If using dynamic backend settings, you might pass a backend config file; otherwise, ensure your S3 bucket and DynamoDB table are created beforehand.)
terraform init
Apply the Configuration for a Given Environment:
For development, for example:
terraform apply -var-file=dev.tfvars -auto-approve
For production:
terraform apply -var-file=prod.tfvars -auto-approve
Integrate with Jenkins:
You can now use your Jenkins pipeline (with your provided Jenkinsfile) to clone this repo and run the above Terraform commands automatically.

This complete setup provides a production-grade Terraform repository that manages your VPC and EC2 instances (for Jenkins, Build, and SonarQube) using remote state in S3 with DynamoDB locking. Adjust and extend the modules as needed for your complete infrastructure.

