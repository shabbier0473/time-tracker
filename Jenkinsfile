pipeline{
    agent{ label  'maven' }
    parameters{
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'origin/devlop', name: 'BRANCH', type: 'PT_BRANCH'
        gitParameter name: 'TAG',type: 'PT_TAG', selectedValue: 'NONE'
    }
    stages{
        stage ('validate') {
            parallel {
            tools{ maven 'MAVEN_HOME' }
            when {
                expression {BRANCH == 'devlop'  }
            }
            steps{
                sh 'mvn validate'
                echo 'shabir'
            }
        }
        stage('compile'){
            steps {
                build job: "compile"
            }
        }
    }
}
}
