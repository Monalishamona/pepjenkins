pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning the repository...'
                git credentialsId: 'github-token', url: 'https://github.com/Monalishamona/pepjenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Setting up workspace...'
                sh 'mkdir -p output'
                sh 'cp index.html output/'
                sh 'cp styles.css output/'
            }
        }

        stage('Test') {
            steps {
                echo 'Checking if HTML file exists...'
                sh 'test -f output/index.html && echo "HTML file found"'
            }
        }

        stage('Run Local Server') {
            steps {
                echo 'Starting local server (for demonstration)...'
                sh 'python3 -m http.server 8080 --directory output &'
                sh 'sleep 10' // simulate waiting
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
