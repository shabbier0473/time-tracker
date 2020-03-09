pipeline{
    agent{ label  'maven' }
    environment {
        workspace = 'home/maven/workspace/time-tracker'
    }
    parameters{
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'origin/master', name: 'BRANCH', type: 'PT_BRANCH'
        gitParameter name: 'TAG',type: 'PT_TAG', selectedValue: 'NONE'
    }
    stages{
        stage ('validate') {
            tools{ maven 'MAVEN_HOME' }
            when {
                expression {BRANCH == 'devlop'  }
            }
            steps{
                sh 'mvn validate'
            }
        }
        stage('compile'){
            steps {
                build job: 'compile'
            }
        }
    }
}
