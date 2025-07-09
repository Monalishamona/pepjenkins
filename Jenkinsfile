pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning the repository...'
                // Jenkins automatically checks out the repo in declarative pipeline
            }
        }

        stage('Build') {
            steps {
                echo 'Setting up workspace...'
                bat 'mkdir output'
                bat 'copy index.html output\\'
                bat 'copy styles.css output\\'
            }
        }

        stage('Test') {
            steps {
                echo 'Checking if HTML file exists...'
                bat 'if exist output\\index.html (echo HTML file is present) else (exit /b 1)'
            }
        }

        stage('Run Local Server') {
            steps {
                echo 'Starting local server (for demonstration only)...'
                bat 'python -m http.server 8080 --directory output'
                // Use timeout or run only in local/dev; servers in CI will hang
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
