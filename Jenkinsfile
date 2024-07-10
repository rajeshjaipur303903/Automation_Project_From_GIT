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
        stage('Build Application') {
          steps{
              echo 'Creating an optimized staging build'
            }
        }
        stage('Testing') {
          steps{
              echo 'Creating an optimized staging build'
            }
        }

        stage('Deploy') {
          steps{
              script {
              echo 'Change Directory'
              sh script:'''
              #!/bin/bash
              echo "${BUILD_NUMBER}"
              docker build -t custom-nginx .
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