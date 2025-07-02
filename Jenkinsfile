pipeline {
    agent any

    environment {
        VERSION = "${env.BUILD_NUMBER ?: 'dev'}"
        DOCKERHUB_CREDENTIALS = credentials('docker-creds')
        BACKEND_IMAGE = "${DOCKERHUB_CREDENTIALS_USR}/backend-teachua:${VERSION}"
        FRONTEND_IMAGE = "${DOCKERHUB_CREDENTIALS_USR}/frontend-teachua:${VERSION}"
    }
    stages {
        stage('Print version') {
            steps {
                echo "🚀 Starting release for version ${VERSION}"
            }
        }
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Backend compile for sonar') {
            steps {
                dir ('backend'){
                     bat 'mvn clean compile'
                }
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('MySonar') {
                    bat 'sonar-scanner -Dsonar.projectKey=teach_ua -Dsonar.sources=backend,frontend -Dsonar.java.binaries=backend/target/classes ^ -Dsonar.exclusions=/node_modules/,/build/,/dist/'
                }
            }
        }
        stage('Java Unit Tests') {
            steps {
                dir ('backend'){
                     bat 'mvn test -Dcheckstyle.skip=true -Dtest=!VersionCreateTest'
                }
            }
        }
        stage("Build backend image"){
            steps{
                dir ('backend'){
                    bat "docker build --no-cache -t ${BACKEND_IMAGE} ."
                }
            }
        }
        stage("Build frontend image"){
            steps{
                dir ('frontend'){
                    bat "docker build --no-cache -t ${FRONTEND_IMAGE} ."
                }
            }
        }
        stage('Docker Login') {
            steps {
                bat "docker login -u ${DOCKERHUB_CREDENTIALS_USR} -p ${DOCKERHUB_CREDENTIALS_PSW}"
            }
        }
        stage('Push Backend Image') {
            steps {
                bat "docker push ${BACKEND_IMAGE}"
            }
        }
        
        stage('Push Frontend Image') {
            steps {
                bat "docker push ${FRONTEND_IMAGE}"
            }
        }
    }
}
