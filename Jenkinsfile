pipeline {
    agent none
    stages {
        stage('Build') {
            agent any
            steps {
                sh 'cmake -DBUILD_TESTS=ON -B build'
                sh 'cmake --build build/'
            }
        }
    }
}
