pipeline {
    agent any

    tools {
        git 'Default-Git'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    }


    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/prasenjitovhal/firstwebhost.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
