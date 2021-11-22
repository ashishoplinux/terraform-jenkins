pipeline{
    agent any
    environment {
      PATH = "${PATH}:{getTerraformPath()}"
    }
    stages{
        stage('terraform init and apply - dev'){
            steps{
                sh returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform destroy --auto-approve"
   //             sh "terraform init"
                sh "terraform destroy -var-file=dev.tfvars --auto-approve"
            }
        }
        stage('terraform init and apply - prod'){
            steps{
                sh returnStatus: true, script: 'terraform workspace new prod'
            ////    sh "terraform destroy --auto-approve"
     //           sh "terraform init"
                sh "terraform destroy -var-file=prod.tfvars --auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-110', type: 'terraform'
    return tfHome
}
