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
        stage('Compress into arhives') {
            matrix {
                axes {
                    axis {
                        name 'FILE_TYPE'
                        values 'zip', 'tar.gz'
                    }
                }
                environment {
                    FILE_NAME = "Source code"
                    SOURCE = 'CMakeLists.txt app/*'
                }
                stages {
                    stage("Source code") {
                        steps {
                            script {
                                if (FILE_TYPE == 'zip')
                                {
                                    sh 'zip -r "${FILE_NAME}.${FILE_TYPE}" $SOURCE'
                                }
                                else if (FILE_TYPE == 'tar.gz')
                                {
                                    sh 'tar -czvf "${FILE_NAME}.${FILE_TYPE}" $SOURCE'
                                }
                                archiveArtifacts artifacts: "${FILE_NAME}.${FILE_TYPE}", allowEmptyArchive: false
                            }
                        }
                    }
                }
            }
        }
    }
}