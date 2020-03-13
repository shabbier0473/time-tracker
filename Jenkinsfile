pipeline{
    agent { label "maven" }
    tools { maven "MAVEN_HOME" }
    parameters{
        gitParameter branchFilter: 'origin/(.*)', defaultValue: 'origin/devlop', name: 'BRANCH', type: 'PT_BRANCH'
        gitParameter name: 'TAG',type: 'PT_TAG', selectedValue: 'NONE'
    }
    stages{
        stage ("build"){
            steps{
                sh "mvn compile"
                sh "mvn  clean install"
                
            }
        }
        stage ("image"){
            steps{
                sh "docker-compose build"
            }
        }
    }
}
