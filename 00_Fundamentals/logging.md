# Logging on AWS


## Access Logs
- API Gateway -> CloudWatch Logs (needs IAM role)
- CloudFront -> S3 bucket (uses bucket ACL)
- ELB - > S3 bucket (uses bucket policy)

## Execution Logs
- API Gateway -> CloudWatch Logs (needs IAM role)
- Lambda -> CloudWatch Logs (needs IAM role)
- custom app on EC2 -> S3 bucket or CloudWatch Logs (both need an IAM role)

## Security Logs
- Amazon Inspector -> store in Inspector or send to SNS
- GuardDuty -> store in GuardDuty or send to CloudWatch Events (needs IAM role) and set up event rules
- CloudTrail -> S3 bucket (default) or CloudWatch Logs
- VPC Flow Logs -> CloudWatch Logs (needs IAM role) or S3 bucket

## Log Processing
- Kinesis Data Streams
    - Log producers > KDS > consumers
- Kinesis Firehose
    - log producers > KFH > S3, Redshift, Elasticsearch, Splunk
- Athena
    - analyse data at rest in S3 bucket
- AWS Glue
    - ETL 
- AWS EMR
    - S3 - MR - other S3
- Amazon Elasticsearch & Kibana
- CloudWatch Logs 
- AWS Lambda
    - integration with Kinesis Firehose, S3