node {
    checkout scm
}

pipeline {
    agent any

    triggers {
        pollSCM('*/5 * * * *')
    }

    stages {
        stage('Minify files') {
            steps {
                sh 'bash ci-scripts/minify.sh'
            }
        }
        stage('Copy files over to the webserver') {
            steps {
                sh 'bash ci-scripts/prep-and-rsync.sh'
            }
        }
    }
}
