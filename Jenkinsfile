pipeline{
    agent any
    environment {
      PATH = "{PATH}:{getTerraformPath()}"
    }
    stages{
        stage('teraaform init'){
            steps{
                sh "terraform init"
            }

        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-110', type: 'terraform'
    return tfHome
}
