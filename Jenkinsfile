pipeline {
    agent any
    
    stages {
        stage ('clone') {
            steps {
                git branch: 'master', url: 'https://github.com/adikarthik/demo1.git'
            }
        }
        stage ('compile') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        stage ('build image') {
            steps {
                sh 'docker build -t imagename:1.0 .'
            }
        }
        stage ('push image') {
            steps {
                script {
                    sh 'docker login -u priya668 -p Priya@123'
                    sh 'docker tag imagename:1.0 priya668/tomcat'
                    sh 'docker push priya668/tomcat'
                }
            }
        }
    }
}
