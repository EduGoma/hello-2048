pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
         stage('Package'){
             steps{
                withCredentials([string(credentialsId: 'github-token', variable: 'CR_PAT')]) {
                    sh "echo $CR_PAT | docker login ghcr.io -u edugoma --password-stdin"
                    sh 'docker-compose push'
                }
            }
        }
        stage('Deploy') {
            steps {            
                sshagent(['ssh-amazon']) {
                    sh """
                        ssh -o "StrictHostKeyChecking no" ec2-user@176.34.77.107 docker pull ghcr.io/edugoma/hello-2048
                    """
                    sh """ssh -o "StrictHostKeyChecking no" ec2-user@176.34.77.107 pwd"""
                    sh """ssh -o "StrictHostKeyChecking no" ec2-user@176.34.77.107 docker-compose up -d"""
                }
            }
        }
    }
}
