pipeline{
    agent { label 'maven' }
    parameters{
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'origin/master', name: 'BRANCH', type: 'PT_BRANCH'
        gitParameter name: 'TAG',type: 'PT_TAG', selectedValue: 'NONE'
    }
    stages{
        stage('scm'){
            parallel{
        stage('validate'){
            tools { maven "MAVEN_HOME" }
            steps{
                sh 'mvn validate'
            }
        }
        stage ('scm'){
            parallel{
                script{
                    step2("build")
                }
                
            }
            }
        }
        }
    }
    }
}
