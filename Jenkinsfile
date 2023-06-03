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
                sh "docker build . -t multibranch-pipeline-node-app"
            }
        }
        stage("Push to DockerHub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"DockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){ 
                sh "docker tag multibranch-pipeline-node-app ${env.dockerHubUser}/multibranch-pipeline-node-app:latest" 
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}" 
                sh "docker push ${env.dockerHubUser}/multibranch-pipeline-node-app:latest"
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
