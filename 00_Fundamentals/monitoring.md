# Monitoring on AWS

AWS provides a suite of services that will monitor and combat threats through unified security and compliance, managed threat detection, application security analysis, and the ability to investigate potential security issues. 


- [AWS Security Hub](../99_Services/AWS_Security_Hub.md)
- [Amazon Guard Duty](../99_Services/Amazon_Guard_Duty.md)
- [Amazon Inspector](../99_Services/Amazon_Inspector.md)
- [Amazon Detective](../99_Services/Amazon_Detective.md)
- [Amazon Macie](../99_Services/Amazon_Macie.md)

## Infrastructure Security Monitoring
- VPC Flow Logs
    - VPC level
    - subnet level
    - NIC level
- GuardDuty
    - monitors CloudTrail logs, DNS logs and VPC Flow Logs to identify normal behaviour and aberrations
- OS logs
    - ship to S3 and analyse with Athena
    - CloudWatch Logs Insights
    - Splunk or other SIEM
- Config Rules
    - check for changes
        - SG changes
        - new EC2 lunch
        - RT changes
- Amazon Inspector
    - analyse all kinds of OS vulnerabilities

## Application Level Monitoring
- CloudWatch Logs
    - Lambda execution logs
    - EC2 application logs
    - ECS/EKS container logs
- CloudTrail
    - Cognito logins
    - Step Functions logs
    - deployments via CodeDeploy
- S3 for app logs storage
    - ALB access logs
    - CloudFront access logs
    - RedShift audit logs

## AWS Account Security Monitoring
- CloudWatch Events
    - GuardDuty findings of unauthorised or aberrant events
    - CloutTrail events
    - AWS Organizations events
- Config Rules
    - compliance rules
        - CloudTrail enabled?
        - IAM keys rotated?
        - root user MFA enabled?

## Troubleshooting Security Monitoring
- security event mislabeled as performance event
    - scenario: attack causes CPU spike, but is identified as a normal occurrence and autoscaling kicks in
    - scenatio: vulnerable libraries identified on EC2
- unclear requirements for securty monitoring
- gaps in OS updates

### Troubleshooting tools
- Amazon Inspector findings
- CloudWatch alarms and metrics
- CloudTrail logs
- CloudWatch Logs insights

### Troubleshooting scenario
Security event didn't generate notifications
- trace why notifications were not received
    - CloudTrail -> CloudWatch -> SNS -> email
        - is CloudTrail enabled?
        - is CloudWatch alarm enabled, was it modified or deleted?
        - does SNS subscription exist, was it modified or deleted?
        - did spike in SNS alert caused subscrption to be suspended by AWS?
        - internal email (check spam etc)
- REMEDIATION:
    - Config rule + Lambda function to re-enable CloudTrail when it's in disabled state
    - use Lambda to evaluate and recreate missing CloudWatch alerts
    - prevent SNS topics/subscrtipions deletion 