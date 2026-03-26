pipeline {
    agent slave-java
    
    stages {
        stage('Git clone') { 
            steps {
                git branch: 'main', url: 'https://github.com/Shreenivas123/Demo-java.git'
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to tomcat') { 
            steps {
                sh 'echo "I am Deploying"'
                sh '''
                    sudo cp /var/lib/jenkins/workspace/pipelineJob/target/my-java-app-1.0-SNAPSHOT.war \
                        /home/ubuntu/apache-tomcat-11.0.20/webapps/
                '''
            }
        }
    }
}
