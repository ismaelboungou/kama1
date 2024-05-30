pipeline{
	agent any
	stages{
		stage('Build'){
			steps{
				echo "This is build step"
}}
stage('Test'){
	steps{
	sh 'bash deploy.sh'
}}
	stage('Deploy'){
		steps{
		echo "Successfully Deployed"
}
}
}
}
