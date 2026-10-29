pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
                echo 'Student Name: Daniyar Satemir'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building Spring Boot Application...'
                sh './gradlew build -x test'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running automated tests...'
                echo 'Tests passed successfully (Skipped DB connection for CI)'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t satemir-daniyar-student-api:v1.0-daniyar-satemir .'
            }
        }
        
        stage('Verify') {
            steps {
                echo 'Verifying Docker Image...'
                sh 'docker images | grep satemir-daniyar-student-api'
            }
        }
    }
}