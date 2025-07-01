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
                    bat 'sonar-scanner -Dsonar.projectKey=teach_ua -Dsonar.sources=backend,frontend -Dsonar.exclusions=**/node_modules/**,**/build/**,**/dist/**'
                }
            }
        }
       stage('Java Unit Tests') {
            steps {
                dir ('backend'){
                     bat 'mvn test -Dcheckstyle.skip=true'
                }
            }
        }
        stage('React Unit Tests') {
            steps {
                dir('frontend') {
                    bat '''
                      npm ci
                      npm run test -- --watchAll=false
                    '''
                }
            }
        }
    }
}
