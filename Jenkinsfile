pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
                sh "git tag 1.0.${BUILD_NUMBER}" 
                sh "docker tag ghcr.io/edugoma/hello-2048:latest ghcr.io/edugoma/hello-2048:1.0.${BUILD_NUMBER}" 
                sshagent(['Git-hubSSH']) {
                    sh "git push --tags"
                }
                
            }
        }
         stage('Package'){
             steps{
                withCredentials([string(credentialsId: 'github-token', variable: 'CR_PAT')]) {
                    sh "echo $CR_PAT | docker login ghcr.io -u edugoma --password-stdin"
                    sh 'docker-compose push'
                    sh "docker push ghcr.io/edugoma/hello-2048:1.0.${BUILD_NUMBER}"
                }
            }
        }
        stage('Deploy') {
            steps {            
                sshagent(['ssh-amazon']) {
                    sh 'ssh -o "StrictHostKeyChecking no" ec2-user@176.34.77.107 docker pull ghcr.io/edugoma/hello-2048:1.0.${BUILD_NUMBER}'
                    sh """ssh ec2-user@176.34.77.107 docker-compose up -d"""
                }
            }
        }
    }
}
