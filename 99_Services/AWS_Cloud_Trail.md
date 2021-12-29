# AWS Cloud Trail

Provides goverance, compliance and audit for AWS Accounts by providing history of events (API calls) made by
- console
- SDK
- CLI
- AWS Services (ie. IAM Users, IAM Roles)


Logs can be send to CloudWatch Logs or S3


CloudTrail Events:
- Management Events
    - Operations performed on resources in AWS account
        - Read Events
        - Write Events
- Data Events
    - Not logged by defautl
    - S3 object-level activity (GetObject, DeleteObject etc)
    - Lambda function executyion activity
- Insight Events
    - analyse events to creat baseline
    - analyse events and detect unusual activity
        - inaccurate resource provisioning
        - hitting resource limits
        - burst of actions
        - gaps in activity
    - send events to:
        - CloudTrail Console
        - S3 Bucket
        - EventBridge events

CloudTrail Events are stored for 90 days by default. Use S3 Buckets for long term retention. 