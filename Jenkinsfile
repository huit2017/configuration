pipeline {
    agent {
        label 'iac'
    }
    stages {
        stage('checkout - git') {
            steps {
                git url:'git@github.com:huit2017/configuration.git', credentialsId: '8505e445-6221-4656-82f6-da163131340a'
            }
        }
        stage('configuration - ansible') {
            steps {
                sh 'ansible-playbook -i ansible/production ansible/site.yml'
            }
        }
        stage('test - serverspec') {
            steps {
                sh 'cd serverspec && rake spec'
            }
        }
    }
    post {
        success {
            slackSend channel: "#renshu", message: "Build success: ${env.JOB_NAME} ${env.BUILD_NUMBER}"
        }
        failure {
            slackSend channel: "#renshu", message: "Build failure: ${env.JOB_NAME} ${env.BUILD_NUMBER}"
        }
    }
}
