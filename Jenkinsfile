pipeline{
    agent{ label  'maven' }
    triggers{
        upstream(upstreamProjects: 'compile')
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
    }
}

