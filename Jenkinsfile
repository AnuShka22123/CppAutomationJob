pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YOUR_USERNAME/cpp_jenkins_demo.git'
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
