pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/your-repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'bash deploy.sh'
            }
        }
    }
}
