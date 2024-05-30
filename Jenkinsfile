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
		sh 'echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers sudo -S apt install npm'
                sh 'npm test'
            }
        }
        stage('Build') { 
            steps {
                sh 'npm run build'
            }
        }
    }
}
