pipeline {
	agent any
	
	stages {
		stage ('build') {
			steps {
				sh 'mvn clean install -DskipTests'
			}
		
		}
		stage ('test') {
			steps {
				sh 'mvn clean install'
			}
			//post {
				//always {
					//junit 'target/surefire-reports/*.*xml'
					//archiveArtifacts artifacts: 'target/*.jar', followSymlinks: false
				}//
			}//
		}
		stage ('build image') {
			steps {
				sh 'docker build .'
			}
		
		}
	
	}
}
