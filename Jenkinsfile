pipeline {
agent any

environment {
  AWS_REGION = "us-east-1"
  AWS_ACCESS_KEY_ID = credentials('aws-creds')
  AWS_SECRET_ACCESS_KEY = credentials('aws-creds')
}

stages {
  stage('checkout'){
    steps {
      git branch: 'main', url: 'https://github.com/Rahul917797/backend-s3-terraform-jenkins.git'
     }
  }

  stage('Terraform Init'){
    steps {
      sh 'terraform init'
    }
  }

  stage('Terraform Validate'){
    steps {
      sh 'terraform validate'
    }
  }

  stage('Terraform Plan'){
    steps {
      sh 'terraform plan'
    }
  }

  stage('Terraform Apply'){
    steps {
      sh 'terraform apply -auto-approve'
    }
  }
}

post {
  success {
    echo 'pipeline created successfully'
  }
  failure {
    echo 'pipeline Failed'
  }
 }
}

  




