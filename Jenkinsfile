pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/EduGoma/hello-2048.git'
            }
        }
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
