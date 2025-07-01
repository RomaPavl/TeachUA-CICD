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
/*
       stage('Java Unit Tests') {
            steps {
                dir ('backend'){
                     bat 'mvn test -Dcheckstyle.skip=true -Dtest=!VersionCreateTest'
                }
            }
        }
*/        
        stage('React Unit Tests') {
            steps {
                dir('frontend') {
                    bat 'npm install'
                    bat 'npm run test -- src/App.test.js --watchAll=false --ci --verbose'
                }
            }
        }
    }
}
