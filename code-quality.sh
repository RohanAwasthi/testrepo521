#!/bin/bash
mkdir s3
aws s3 cp s3://devex-deploy/python.zip /root/.jenkins/workspace/custom-actions/Sonarmy-app-52/s3
unzip s3/python.zip -d /root/.jenkins/workspace/custom-actions/Sonarmy-app-52/s3
cd s3
export PATH=$PATH:/opt/sonar-scanner-5.0.1.3006-linux/bin/
sonar-scanner -Dsonar.projectKey=aws-elb-node -Dsonar.sources=. -Dsonar.host.url=http://172.190.72.81:9000 -Dsonar.login=33807d41f57376c8f2e9959abc3d3575dfea9fe4
