pipeline {
    agent any
    
    stages {
        stage('Clean workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout Code from GIT') {
            steps {
                checkout scm: [$class : 'GitSCM',
                userRemoteConfigs: [[url : "https://github.com/rajeshjaipur303903/gamemano.git"]],
                branches : [[name: "${GIT_BRANCH}"]]],

            poll: True
            }
        }
        stage('Sonar-integrate') {
          steps{
              echo 'Adding Sonar project'
            }
        }
        stage('Build Application') {
          steps{
              echo 'Creating an optimized staging build'
              sh 'docker build -t custom-nginx .'
            }
        }
        stage('Some-Scripts to Test') {
          steps{
              echo 'Creating an optimized staging build'
              echo 'can run some scripts to test in images'
            }
        }

        stage('Deploy') {
          steps{
              script {
              echo 'Change Directory'
              sh script:'''
              #!/bin/bash
              echo "${BUILD_NUMBER}"
              docker run -d -p 80:80 --name ${BUILD_NUMBER} custom-nginx
              echo "Web appication has been deployed"
              '''
              }
            }
        }
         stage("Clean") {
             steps {
                 cleanWs()
             }
         }

    }
    
}