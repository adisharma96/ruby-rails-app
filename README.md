# README

1. I had setup an ec2 instance 
2. Deployed the ruby app on the instance and containerized it
3. Tested it to run locally on http://localhost:3000
4. Created a Github Actions CI/CD pipeline in order to deploy the app on an another ec2-instance
5. Created bash script "ruby.sh" in order to automate the "rails db:create and "rails db:migrate" steps
6. The monitoring can be setup using Prometheus along with the cadvisor exporter, pushing the cadvisor metrics into prometheus and then visualizing the metrics using grafana by adding prometheus as a datasource into it.
I couldn't complete the terraform part due to short of time and lack of expertise.
