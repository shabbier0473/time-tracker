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
                echo "shabbier"
                
            }
        }
        stage ("image"){
            steps{
                sh "docker-compose -f docker-compose.yml build"
            }
        }
    }
}
