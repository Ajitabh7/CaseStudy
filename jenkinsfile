pipeline {
    agent any

    stages {
        stage('yum-utils') {
            steps {
                sh "yum install yum-utils -y"
            }
        }
        stage('Install Docker'){
            step{
                sh "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"
                sh "sudo yum install docker-ce docker-ce-cli containerd.io --nobest –y"
                sh "docker --version"
            }
        }
        stage('Start and Enable'){
            step{
                echo "starting Docker service"
                sh "sudo serivce docker start"
                echo "Enabling Docker service at run time"
                sh "sudo systemctl enable docker"
            }
        }
    }
}
