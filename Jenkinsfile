pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'testing', url: 'https://github.com/Kshitiz4S/11-MicroService-Online-Boutique-Appliction.git'
            }
        }
        stage('Login to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'DockerId', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh"docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    }
                }
            }
        }
        stage('Build adservice') {
            steps {
                script {
                    dir("src/adservice") {
                        sh"docker build -t kshitiz182/adservice:latest ."
                        sh"docker push kshitiz182/adservice:latest"
                        sh"docker rmi kshitiz182/adservice:latest"
                    }
                }
            }
        }
    }
}

