pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/avinash12602/spring-boot-app.git'
                echo "git brnach sucessfull"
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
                echo "mavaen sucessfull"
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t spring-boot-app .'
                sh 'docker run -d -p 8090:8080 --name spring-boot-container spring-boot-app'
                echo "docker succesfull"
            }
        }
    }
}
