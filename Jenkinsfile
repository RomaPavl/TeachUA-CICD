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
        stage('Prepare env file') {
            steps {
            withCredentials([
                string(credentialsId: 'my-password', variable: 'MY_PASSWORD'),
                string(credentialsId: 'jwt-secret', variable: 'JWT_SECRET'),
                string(credentialsId: 'jwt-access-secret', variable: 'JWT_ACCESS_SECRET'),
                string(credentialsId: 'jwt-refresh-secret', variable: 'JWT_REFRESH_SECRET'),
                string(credentialsId: 'jwt-access-secret-key', variable: 'JWT_ACCESS_SECRET_KEY'),
                string(credentialsId: 'jwt-refresh-secret-key', variable: 'JWT_REFRESH_SECRET_KEY'),
                string(credentialsId: 'pivate-key', variable: 'PRIVATE_KEY'),
                string(credentialsId: 'google-map-key', variable: 'GOOGLE_MAP_KEY'),
                string(credentialsId: 'prod-base-uri', variable: 'PROD_BASE_URI'),
                string(credentialsId: 'dev2-datasource-url', variable: 'DEV2_DATASOURCE_URL'),
                string(credentialsId: 'dev2-datasourse-user', variable: 'DEV2_DATASOURCE_USER'),
                string(credentialsId: 'dev2-datasource-password', variable: 'DEV2_DATASOURCE_PASSWORD'),
                string(credentialsId: 'public-url', variable: 'PUBLIC_URL'),
                string(credentialsId: 'prod-public-url', variable: 'PROD_PUBLIC_URL'),
                string(credentialsId: 'uploadt-path', variable: 'UPLOAD_PATH'),
                string(credentialsId: 'static-folder', variable: 'STATIC_FOLDER'),
                string(credentialsId: 'base-uri', variable: 'BASE_URI'),
                string(credentialsId: 'base-url', variable: 'BASE_URL'),
                string(credentialsId: 'prod-base-url', variable: 'PROD_BASE_URL'),
                string(credentialsId: 'user-email', variable: 'USER_EMAIL'),
                string(credentialsId: 'user-pass', variable: 'USER_PASSWORD'),
                string(credentialsId: 'send-pass', variable: 'SEND_PASSWORD'),
                string(credentialsId: 'user-logs', variable: 'URL_LOGS'),
                string(credentialsId: 'oath2-google-client-id', variable: 'OAUTH2_GOOGLE_CLIENT_ID'),
                string(credentialsId: 'oath2-google-client-secret', variable: 'OAUTH2_GOOGLE_CLIENT_SECRET'),
                string(credentialsId: 'oath2-facebook-client-id', variable: 'OAUTH2_FACEBOOK_CLIENT_ID'),
                string(credentialsId: 'oath2-facebook-client-secret', variable: 'OAUTH2_FACEBOOK_CLIENT_SECRET'),
                string(credentialsId: 'datasource-url', variable: 'DATASOURCE_URL'),
                string(credentialsId: 'datasource-user', variable: 'DATASOURCE_USER'),
                string(credentialsId: 'datasource-pass', variable: 'DATASOURCE_PASSWORD'),
                string(credentialsId: 'service-acc-client-email', variable: 'SERVICE_ACCOUNT_CLIENT_EMAIL'),
                string(credentialsId: 'service-acc-private-key', variable: 'SERVICE_ACCOUNT_PRIVATE_KEY')
           ]) {
              sh '''
                envsubst < setenv-temp.sh > setenv.sh
                chmod +x setenv.sh
              '''
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
