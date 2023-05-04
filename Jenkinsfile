pipeline {
  agent any
  stages {
    stage('Stop and remove containers') {
      steps {
        sh 'cd /var/lib/jenkins/workspace/wp-pipeline && docker-compose down'
        sh 'docker stop $(docker ps -aq)'
        sh 'docker container prune -a -f'
      }
    }
    stage('Remove existing images') {
      steps {
        sh 'docker rmi $(docker images -q)'
        sh 'docker image prune -a -f'
      }
    }
    stage('Build Docker images') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('Start services') {
      steps {
        sh 'cd /var/lib/jenkins/workspace/wp-pipeline && docker-compose up -d'
      }
    }
  }
}
