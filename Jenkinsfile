pipeline {
    agent { label 'linux' }
    stages {
        stage('Preparation') {
            steps {
                sh 'cmake -DBUILD_TESTS=ON -B build'
            }
        }
        stage('Build') {
            steps {
                sh 'cmake --build build/'
            }
        }
    }
}
