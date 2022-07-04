# pull-artifact-from-artifactory

This action will enable you to download artifacts from any Artifactory location using the user credentials stored as secret in Github Repository.

# Pre-Requisites

You need to create the following 2 secrets in the Github Repository to provide the user credentails to authenticate with the artifactory:-

USER_NAME --> Username you want to use to authenticate
PASSWORD --> Password of the provided user

You need to declare the following environment variable to provide details of the artifact you want to download and the target name with which you will store the artifact locally:-

FILE --> Artifactory File location
TARGET --> Target file name with which you will save it locally

# Usage
```yaml
on: push
name: Pull Artifacts from Artifactory
jobs:
  pull-artifacts:
    name: Pull Artifacts from Artifactory
    runs-on: ubuntu-latest
    steps:
      - name: Download Jar from Artifactory
      env:
        USER_NAME: ${{ secrets.ARTIFACTORY_USERNAME }}
        PASSWORD: ${{ secrets.ARTIFACTORY_PASSWORD }}
        FILE: "http://34.122.63.81:8082/artifactory/gradle-build/app1.jar"
        TARGET: "app.jar"
      uses: trideepnag1911/pull-artifact-from-artifactory@main
```

