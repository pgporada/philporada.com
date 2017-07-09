node {
    checkout scm
}

pipeline {
    agent any

    triggers {
        pollSCM('*/5 * * * *')
    }

    stages {
        stage('Build and deploy') {
                sh 'bash ci-scripts/minify.sh'
                sh 'bash ci-scripts/prep-and-rsync.sh'
            }
        }
    }
}
