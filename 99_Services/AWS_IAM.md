# AWS Identity and Access Management (IAM)

- Allows for creating <strong>roles</strong> that define a set of permissions and let authenticated identities assume them.

- Provides granular control of user access to services and resources.

- Integrated into most AWS services, allowing to define access controls in one place. 

- Analyses continuous streams of metadata generated in the account and network activity from 
    - CloudTrail events
    - VPC flow logs
    - DNS logs

- Uses integrated threat intelligence (ie. known malicious IPs), anomaly detection, and machine learning to identify threats

<strong>Principal</strong>: a person or application that can make a request for an <strong>action</strong> or an <strong>operation</strong> on an AWS resource. 

All principals must be authenticated to send requests. 

Request context:
- action/operation
- resources
- principal
- environment data
- resource data

### Authentication Methods
- username + password
- secret_access_key + access_key_id
- signing certificate
- ssh keys
- keyspace credentials