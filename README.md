# Patient-Demographic-Service
The Patient Demographic Service is the regional source of truth for Patient Demographic Details thorough out the Midland region. The Patient Details Service encapsulates all software, infrastructure/network, data, configurations and processes required to operate the Patient Details as an autonomous service. The Patient Details Service may merge, rename or disappear as more detail is understood regarding the Patient Domain Model.  


# How to deploy?
1. Currently Patient-Demographic-Service repository uses GitHub Actions for CI/CD automation.
2. CI/CD automation provisions AWS resources by using CloudFormation templates from cloudformation folder as well as deploy code to the AWS lambda.
2. Create S3 bucket mhip-patient-demographic-service-&lt;environment-name&gt;
2. Update CloudFormation execution role __AWS_CFN_EXECUTION_ROLE__ in aws-pipeline-&lt;envirionment-name&gt;.yml 
3. Create/Update GitHub secrets
    &lt;environment-name&gt;_AWS_ACCESS_KEY
    &lt;environment-name&gt;_AWS_SECRET_KEY
    &lt;environment-name&gt;_AWS_SESSION_TOKEN
4. Create/Update Parameter store
    /PatientDemographicService/&lt;environment-name&gt;/CloudFormation/Lambda-Security-GroupIds
    /PatientDemographicService/&lt;environment-name&gt;/CloudFormation/Lambda-SubnetIds
5. CI/CD pipeline is setup as 
    When code is pushed to the feature branch, it will deploy to the sandbox environment
    When feature branch is merged with dev branch, it will deploy to the dev environment
    When dev branch is merged with test branch, it will deploy to the test environment
    When test branch is merged with main branch, it will deploy to the prod environment.


##### Create RDS
1. Update parameters in rds-cfn.yml
2. Create CloudFormation stack with rds-cfn.yml file manually.


# Application Settings to run Patient-Demographic-Service
1. All application settings parameters are stored in AWS Parameter Store.


