pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "This is build step"

            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'bash deploy.sh'
            }
        }
    }
}
