node {
    checkout scm
}

pipeline {
    agent any

    triggers {
        pollSCM('H/1 * * * *')
    }

    stages {
        stage('\u27A1 Minify files') {
            steps {
                sh 'bash ci-scripts/minify.sh'
            }
        }
        stage('\u27A1 Copy files over to the webserver') {
            steps {
                sh 'bash ci-scripts/prep-and-rsync.sh'
            }
        }
    }
}
