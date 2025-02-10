pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Remove previous clone attempt
                bat 'if exist "CppAutomationJob" rmdir /s /q CppAutomationJob'
                
                // Clone repository
                bat 'git clone https://github.com/AnuShka22123/CppAutomationJob.git'
            }
        }
        
        stage('Build') {
            steps {
                dir('CppAutomationJob') {
                    // Compile C++ program
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
