pipeline
{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/tchuisv/devops-automation']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t voltairejojo/devops-integration .'
                 }
                
            }
        }
         stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'duckpass')]) {
                       
                    
                   sh 'docker login -u voltairejojo -p ${duckpass}'

                }
                   sh 'docker push voltairejojo/devops-integration'
                }
            }
        }
    }
    
}

    
    
    