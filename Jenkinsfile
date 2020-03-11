pipeline{
    agent any
    stages{
        stage('scl'){
            parallel{
                stage{
                    steps{
                        build job: 'hello'
                    }
                }
                stage{
                    steps{
                        build job: 'hello'
                    }
                }
            }
        }
        
    }
}
