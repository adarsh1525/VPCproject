pipeline{
    agent any
    stages{
        stage(code){
            steps{
                git 'https://github.com/GoudSagar/sample-java-project.git'
            }            
        }
        stage(build){
            steps{
                sh 'mvn install'
            }
        }
        stage(test){
            steps{
                sh 'mvn clean'
            }
        }
    }
}