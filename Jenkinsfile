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
                    echo 'docker-compose push'
                }
            }
        }
        stage('Deploy') {
            steps {            
                withCredentials([sshUserPrivateKey(credentialsId: 'ssh-amazon', keyFileVariable: '')]) {
                sh 'ssh ec2-user@176.34.77.107 id'
                }
            }
        }
    }
}
