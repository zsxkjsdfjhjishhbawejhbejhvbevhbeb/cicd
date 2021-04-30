properties([pipelineTriggers([githubPush()])])
pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                git branch: 'main', url: 'https://github.com/zsxkjsdfjhjishhbawejhbejhvbevhbeb/ubiquitous-octo-chainsaw'
                echo 'Hello world!' 
            }
        }
    }
}
