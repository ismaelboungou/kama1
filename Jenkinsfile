pipeline {
    agent any 
    stages {
        stage('checkout') { 
            steps {
                checkout scm
            }
        }
        stage('Test') { 
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'npm run build'
            }
        }
    }
}
