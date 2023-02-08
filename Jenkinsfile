pipeline {
    withCredentials([sshUserPrivateKey(credentialsId: 'ssh-amazon', keyFileVariable: '')]) {
    sh 'ssh ec2-user@176.34.77.107'
    }
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Start') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
