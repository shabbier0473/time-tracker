pipeline{
    agent { label 'maven' 
                  customWorkspace '/home/maven/workspace/shabbir' }
    parameters{
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'origin/master', name: 'BRANCH', type: 'PT_BRANCH'
        gitParameter name: 'TAG',type: 'PT_TAG', selectedValue: 'NONE'
    }
    stages{
        stage('validate'){
            tools { maven "MAVEN_HOME" }
            steps{
                sh 'mvn validate'
            }

        }
    }
}
