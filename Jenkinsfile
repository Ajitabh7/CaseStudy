pipeline {
    agent any

    stages {
        stage('yum-utils') {
            steps {
                sh "pwd"
                sh "sudo yum install yum-utils -y"
            }
        }
        stage('Install Docker') {
            steps {
                sh "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"
                sh "sudo yum install docker-ce docker-ce-cli containerd.io --nobest –y"
                echo "Installed Docker version"
                sh "docker --version"
            }
        }
        stage('Start and Enable') {
            steps {
                echo "starting Docker service"
                sh "sudo serivce docker start"
                echo "Enabling Docker service at run time"
                sh "sudo systemctl enable docker"
            }
        }
    }
}
