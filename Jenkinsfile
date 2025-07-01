pipeline {
    agent any

    environment {
        VERSION = "${env.BUILD_NUMBER} ?: 'dev'}"
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

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('MySonar') {
                    sh 'sonar-scanner -Dsonar.projectKey=teach_ua -Dsonar.sources=backend,frontend'
                }
            }
        }
       stage('Java Unit Tests') {
            steps {
                dir ('backend'){
                     sh 'mvn test -Dcheckstyle.skip=true'
                }
            }
        }
        stage('React Unit Tests') {
            steps {
                dir('frontend') {
                    sh '''
                      npm ci
                      npm run test -- --watchAll=false
                    '''
                }
            }
        }
    }
}