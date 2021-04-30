pipeline {
    agent any
    
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }
    
    stages {
        stage('Stage 1') {
            steps {
                git branch: 'main', url: 'https://github.com/zsxkjsdfjhjishhbawejhbejhvbevhbeb/ubiquitous-octo-chainsaw'
                echo 'Hello world!' 
                
                // Run Maven on a Unix agent.
                sh "mvn clean test package"
            }
            
            post {
                success {
                    archiveArtifacts 'target/*.jar'
                    archiveArtifacts 'ui/*'
                }
            }
        }
    }
}
