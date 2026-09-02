pipeline {
    agent any

    environment {
        JAVA_HOME = '/usr/lib/jvm/java-25-amazon-corretto.x86_64'
        PATH = "/usr/lib/jvm/java-25-amazon-corretto.x86_64/bin:${env.PATH}"
    }

    stages {
        stage('clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Shreenivas123/Demo-java.git'
            }
        }
        stage('build') {
            steps {
                sh 'echo "JAVA_HOME=$JAVA_HOME" && java -version && mvn -version'
                sh 'mvn clean package'
            }
        }
        stage('deploy') {
            steps {
                sh 'sudo cp target/my-java-app-1.0-SNAPSHOT.war /home/ec2-user/apache-tomcat-10.1.59/webapps'
            }
        }
    }
}
