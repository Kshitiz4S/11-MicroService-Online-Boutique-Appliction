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
	stage('Build cartservice') {
            steps {
                script {
                    dir("src/cartservice/src") {
                        sh"docker build -t kshitiz182/cartservice:latest ."
                        sh"docker push kshitiz182/cartservice:latest"
                        sh"docker rmi kshitiz182/cartservice:latest"
                    }
                }
            }
        }
	stage('Build checkoutservice') {
            steps {
                script {
                    dir("src/checkoutservice") {
                        sh"docker build -t kshitiz182/checkoutservice:latest ."
                        sh"docker push kshitiz182/checkoutservice:latest"
                        sh"docker rmi kshitiz182/checkoutservice:latest"
                    }
                }
            }
        }
	stage('Build currencyservice') {
            steps {
                script {
                    dir("src/currencyservice") {
                        sh"docker build -t kshitiz182/currencyservice:latest ."
                        sh"docker push kshitiz182/currencyservice:latest"
                        sh"docker rmi kshitiz182/currencyservice:latest"
                    }
                }
            }
        }
	stage('Build emailservice') {
            steps {
                script {
                    dir("src/emailservice") {
                        sh"docker build -t kshitiz182/emailservice:latest ."
                        sh"docker push kshitiz182/emailservice:latest"
                        sh"docker rmi kshitiz182/emailservice:latest"
                    }
                }
            }
        }
	stage('Build frontend') {
            steps {
                script {
                    dir("src/frontend") {
                        sh"docker build -t kshitiz182/frontend:latest ."
                        sh"docker push kshitiz182/frontend:latest"
                        sh"docker rmi kshitiz182/frontend:latest"
                    }
                }
            }
        }
	stage('Build loadgenerator') {
            steps {
                script {
                    dir("src/loadgenerator") {
                        sh"docker build -t kshitiz182/loadgenerator:latest ."
                        sh"docker push kshitiz182/loadgenerator:latest"
                        sh"docker rmi kshitiz182/loadgenerator:latest"
                    }
                }
            }
        }
	stage('Build paymentservice') {
            steps {
                script {
                    dir("src/paymentservice") {
                        sh"docker build -t kshitiz182/paymentservice:latest ."
                        sh"docker push kshitiz182/paymentservice:latest"
                        sh"docker rmi kshitiz182/paymentservice:latest"
                    }
                }
            }
        }
	stage('Build productcatalogservice') {
            steps {
                script {
                    dir("src/productcatalogservice") {
                        sh"docker build -t kshitiz182/productcatalogservice:latest ."
                        sh"docker push kshitiz182/productcatalogservice:latest"
                        sh"docker rmi kshitiz182/productcatalogservice:latest"
                    }
                }
            }
        }
	stage('Build recommendationservice') {
            steps {
                script {
                    dir("src/recommendationservice") {
                        sh"docker build -t kshitiz182/recommendationservice:latest ."
                        sh"docker push kshitiz182/recommendationservice:latest"
                        sh"docker rmi kshitiz182/recommendationservice:latest"
                    }
                }
            }
        }
	stage('Build shippingservice') {
            steps {
                script {
                    dir("src/shippingservice") {
                        sh"docker build -t kshitiz182/shippingservice:latest ."
                        sh"docker push kshitiz182/shippingservice:latest"
                        sh"docker rmi kshitiz182/shippingservice:latest"
                    }
                }
            }
        }
    }
}

