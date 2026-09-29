pipeline {

    agent any

    tools {
        jdk 'JDK25'
        maven 'Maven3'
    }

    environment {
        IMAGE_NAME = "omkar634/mathquizapp:v1"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/it25omkarparte-code/SIDOM-repo.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Deploy WAR to Tomcat') {
            steps {
                bat '''
                copy /Y target\\MathQuizAppDevOps-1.0-SNAPSHOT.war "C:\\Tomcat 11.0\\webapps\\MathQuizAppDevOps.war"
                '''
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push %IMAGE_NAME%'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f deployment.yaml'
                bat 'kubectl apply -f service.yaml'
            }
        }

    }

    post {
        success {
            echo 'CI/CD Pipeline executed successfully!'
        }

        failure {
            echo 'CI/CD Pipeline failed!'
        }
    }
}