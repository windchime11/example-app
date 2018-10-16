node {
	def app
	
	stage('Clone repository'){
		checkout scm
	}  	

	stage('Build image') {
		app = docker.build('jzoudocker/example-app')
	}

	stage('Push image') {
		docker.withRegistry('https://registry.hub.docker.com', '8f85da2c-3cd6-44df-9991-fa286c8d8b8f') {
			app.push('latest')
		}
	}
}
