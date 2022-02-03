# Incident Response

Use APIs to automate routine tasks that needs performing during incident response (ie. cmd to isolate EC2 instance by changing associated security groups)

Use APIs and EBS snapshots for forensic analysis.

AWS CloudFormation can be used to quickly create new preconfigured instances in isolated environments for forensics.

Use [AWS Step Functions](../99_Services/AWS_Step_Functions.md) to create serverless workflows to build and updates apps quickly. 

Use [AWS Config](../99_Services/AWS_Config.md)


## Incident Response Lifecycle

### Preparation
1. Limit the Blast Radius
    - use AWS Organizations
    - use multiple VPCs
2. Self documenting infrastructure
    - AWS Config
    - AWS CloudFormation
    - AWS SSM (Systems Manager Service)
3. Create prodecures and runbooks
    - store documents (if in S3 then <b>in a different account</b>) 
4. Generate normal behaviour baseline
    - AWS CloudWatch
    - AWS GuardDuty
5. Create recovery images
    - EC2 AMIs
    - snapshots
    - file backups and configs in S3
    - licenses and access keys in SSM Parameter Store
6. Asses risks
    - Amazon Inspector
    - AWS GuardDuty
    - Amazon Macie (evaluate S3 buckets permissions)
7. Network security
    - VPC NACL
    - VPC SG
    - VPC Flow Logs
    - AWS WAF
8. Store relevant event information
    - CloudWatch Logs
    - AWS Config streams
    - CloudWatch Events
    - S3 access logs
    - CloudTrail logs
### Detection and Analysis
1. Recognise sings of intrusion
    - CloudWatch
    - CloudTrail
    - GuardDuty
    - VPC Flow Logs
2. Incident analysis
    - visutalise performance baseline
        - CloudWatch dashboards
        - SSM Insight dashboard
    - understand normal behaviour
        - GuardDuty dashboard
    - implement log forensics
        - CloudWatch Logs
        - S3 lifecycle policies
    - correlate events between logs and metrics
        - Amazon Elastic Search & Kibana
3. Incident notification
    - SNS
    - SES
    - Trusted Advisor
4. Use support
    - open support case
    - browse AWS forums
    - consider getting premium support
### Containment, eradication and recovery 
1. Containment Strategy
    - SG rules (create new SG with all access blocked and attach to NIC)
    - revoking IAM sessions
    - WAF ACL rules
    - IAM policies
    - access key rotation
    - KMS CMK rotation
2. Evidence gathering and handling
    - CloudTrail
    - CloudWatch Logs
    - VPC Flow Logs
    - IAM Access Advisor
3. Identify attacker
    - DNS lookup
    - Amazon GuardDuty
4. Eradicate compromised resources
    - terminate compromised EC2
    - disable compromised keys
    - isolate compromised data for future analysis
5. Recovery
    - know your RPO/RTO
    - repair vs replace
    - automate
6. Cleanup
     - remove temp resources created during incident response
     - audit keys (KMS)
     - audit IAM
     - review findings 
### Post-incident 
1. Lessons learned
    - evidence retention
        - S3 / Glacier
        - AMI
        - snapshots
2. Propose improvements
    - least privilege
        - access control
        - network permissions
    - monitoring
        - improve dashboards