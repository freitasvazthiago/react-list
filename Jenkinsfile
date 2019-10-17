node {  
  stage('SCM') {
      checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: 'refs/heads/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/freitasvazthiago/react-list.git']]]
    }
    stage('SonarQube Analysis') {
          sh "/var/jenkins_home/tools/hudson.plugins.sonar.SonarRunnerInstallation/sonarqube/bin/sonarqube -Dsonar.host.url=http://localhost:9000 -Dsonar.projectName=react-list -Dsonar.projectVersion=1.0 -Dsonar.projectKey=react-list:app -Dsonar.sources=. -Dsonar.projectBaseDir=/home/jenkins/workspace/sonar-pipeline"
    }
}
