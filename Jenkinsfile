pipeline {
    agent any
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/fjblsouza/techworld-js-docker-demo-app.git", branch: "master"
            }
        }
        stage("Build and Test"){
            steps{
                sh "docker build . -t new-test-node-app"
            }
        }
        stage("Push to DockerHub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"DockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){ 
                sh "docker tag new-test-node-app ${env.dockerHubUser}/new-test-node-app:latest" 
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}" 
                sh "docker push ${env.dockerHubUser}/new-test-node-app:latest"
                }
            }
        }
        stage("Deploy"){
            steps{
                sh "docker-compose down && docker-compose up -d"
            }
        }
    }
}
