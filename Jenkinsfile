pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/AnuShka22123/CppAutomationJob.git'
            }
        }
        stage('Build') {
            steps {
                bat 'build.bat'
            }
        }
        stage('Run') {
            steps {
                bat 'hello_world.exe'
            }
        }
    }
}
