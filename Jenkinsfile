node {
    checkout scm
}

pipeline {
    agent any

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
