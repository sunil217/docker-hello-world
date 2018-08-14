pipeline {
    agent any
    
    stages {
        stage('Docker Version') {
            steps {
                sh 'docker version'
            }
        }

        stage('Docker images') {
            steps {
                sh 'docker images'
            }
        }


        stage('Artifactory configuration') {
           steps {
             script {
                def server = Artifactory.server 'artifactory-usa'
                def rtDocker = Artifactory.docker server: server
                server.bypassProxy = true
                def buildInfo = rtDocker.push 'artifactory-us-01.ateb.com/docker-demo-helloworld/helloworld:latest', 'docker-demo-helloworld'
                server.publishBuildInfo buildInfo
    }
  }
 }





    }
}