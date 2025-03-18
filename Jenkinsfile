pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
  }

  parameters {
    string(name: 'ENV', defaultValue: 'dev', description: 'Choose environment: dev or prod')
  }

  stages {
    stage('Checkout Code') {
      steps {
        git branch: 'main', url: 'https://github.com/<YOUR_GITHUB_USERNAME>/terraform-infra.git'
      }
    }

    stage('Terraform Init') {
      steps {
        script {
          if (params.ENV == 'dev') {
            sh 'terraform init -backend-config=backend-dev.conf'
          } else {
            sh 'terraform init -backend-config=backend-prod.conf'
          }
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        script {
          if (params.ENV == 'dev') {
            sh 'terraform plan -var-file=dev.tfvars'
          } else {
            sh 'terraform plan -var-file=prod.tfvars'
          }
        }
      }
    }

    stage('Terraform Apply') {
      steps {
        script {
          if (params.ENV == 'dev') {
            sh 'terraform apply -auto-approve -var-file=dev.tfvars'
          } else {
            sh 'terraform apply -auto-approve -var-file=prod.tfvars'
          }
        }
      }
    }
  }
}

