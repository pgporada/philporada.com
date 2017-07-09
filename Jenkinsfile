node {
    stage('Checkout code') {
        git 'REPO'
    }
}
pipeline {
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('\u27A1 Do something') {
            steps {
                sh 'uptime'
            }
        }
    }
}
