pipeline {
    agent { dockerfile true }
    stages {
        stage('Preparation') {
            steps {
                sh 'cmake -B build'
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
                    SOURCE = 'CMakeLists.txt app/* include/* lib/* src/* tests/*'
                }
                stages {
                    stage("Source code") {
                        steps {
                            script {
                                sh 'rm -rf "${FILE_NAME}.${FILE_TYPE}"'
                                if (FILE_TYPE == 'zip')
                                {
                                    sh 'zip -r "${FILE_NAME}.${FILE_TYPE}" $SOURCE'
                                }
                                else if (FILE_TYPE == 'tar.gz')
                                {
                                    sh 'tar -czvf "${FILE_NAME}.${FILE_TYPE}" $SOURCE'
                                }
                            }
                        }
                    }
                    stage("Check arhives") {
                        steps {
                            script {
                                sh 'rm -rf tmp/${FILE_TYPE}'
                                sh 'mkdir -p tmp/${FILE_TYPE}'
                                if (FILE_TYPE == 'zip')
                                {
                                    sh 'unzip "${FILE_NAME}.${FILE_TYPE}" -d tmp/${FILE_TYPE}'
                                }
                                else if (FILE_TYPE == 'tar.gz')
                                {
                                    sh 'tar -xf "${FILE_NAME}.${FILE_TYPE}" -C tmp/${FILE_TYPE}'
                                }
                                sh '(cd tmp/${FILE_TYPE} && cmake -DCMAKE_BUILD_TYPE=Release -B build && cmake --build build/)'
                            }
                        }
                    }
                }
                post {
                    success {
                        archiveArtifacts artifacts: "${FILE_NAME}.${FILE_TYPE}", allowEmptyArchive: false
                    }
                }
            }
        }
    }
}