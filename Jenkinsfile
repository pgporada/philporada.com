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
                sh '''
                find -type f -name "*.html" -o name "*.js" -o -name "*.css" -o -name "*.json" -o -name "*.svg" -o -name "*.xml" -exec minify {} -o {} \;

                '''
            }
        }
        stage('\u27A1 Copy files over to the webserver') {
            steps {
                sh '''
                rm -rf .git* Jenkinsfile .well-known
                DIR="/var/www/domains/philporada.com/www/htdocs/"
                rsync -avHsP --delete --exclude .well-known site/ "${DIR}"
                restorecon "${DIR}"
                '''
            }
        }
    }
}
