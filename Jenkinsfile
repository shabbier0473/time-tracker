pipeline{
    agent any
    tools { maven "MAVEN_HOME" }
    stages{
        stage ('dev') {
            when { 
                expression {BRANCH == 'origin/devlop' || BRANCH == 'devlop'  }
            }
            steps{
                sh 'mvn validate'
                sh 'mvn compile'
                sh 'mvn test'
               
            }
        }

        stage ('QA'){
            when {
                expression { BRANCH == 'origin/release'  || BRANCH == 'release' }
            }
            steps{
                   sh 'mvn install' 
                   echo '=====TAG======='
            }
        }
        
        
    }
}
