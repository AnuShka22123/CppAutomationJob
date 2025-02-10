pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                bat 'if exist "CppAutomationJob" rmdir /s /q CppAutomationJob'
                
                bat 'git clone https://github.com/AnuShka22123/CppAutomationJob.git'
            }
        }
        
        stage('Build') {
            steps {
                dir('CppAutomationJob') {

                    bat 'g++ hello_world.cpp -o hello_world.exe'
                }
            }
        }
        
        stage('Run') {
            steps {
                dir('CppAutomationJob') {
                    // Run the compiled program
                    bat './hello_world.exe'
                }
            }
        }
    }
    
    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
