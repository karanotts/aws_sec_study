# AWS Security Token Services (STS)

Designed to provide trusted users and services with <strong>temporary</strong> security credentials that control access to AWS resources. 

- dynamic
- single use
- can be set to expire in specific interval (minutes to hours)
- can be renewed before expiring

STS API Actions:
- <strong>AssumeRole</strong>
    - can be called by IAM user or IAM role
    - interval range 15min-1h
- <strong>AssumeRoleWithSAML</strong> 
    - can be called by any user
    - caller must pass SAML authentication from a known identity provider
    - interval range 15min-1h
- <strong>AssumeRoleWithWebIdentity</strong> 
    - can be called by any user
    - caller must pass web identity token from a known identity provider
    - interval range 15min-1h
- <strong>GetFederationToken</strong>
    - can be called by IAM User or AWS Account Root User
    - interval range 15min-36h
- <strong>GetSessionToken</strong>
    - can be called by IAM user or AWS Account Root User
    - interval range 15min-36h