pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/ismaelboungou/kama1.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'bash deploy.sh'
            }
        }
    }
}
