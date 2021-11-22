pipeline{
    agent any
    environment {
      PATH = "${PATH}:{getTerraformPath()}"
    }
    stages{
        stage('terraform init and apply - dev'){
            steps{
                sh returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform init"
                sh "terraform apply -var-file=dev.tfvars --auto-approve"
            }
        }
        stage('terraform init and apply - prod'){
            steps{
                sh returnStatus: true, script: 'terraform workspace new prod'
                sh "terraform init"
                sh "terraform apply -var-file=prod.tfvars --auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-110', type: 'terraform'
    return tfHome
}
