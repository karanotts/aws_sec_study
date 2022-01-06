# AWS IAM Policies

Policy - a set of allow or deny statements that get attached to identities inside AWS.

Explicit deny > allow > implicit deny 
![AWS Policy Evaluation Logic](../images/policy_eval.png)

1. Implicit DENY
2. SCP
3. Resource-based policies
- IAM 
- Identity based policies - attached to a principal or identity (users, groups, roles)
    - Inline policies 
        - attached directly (1-to-1) to <strong>single</strong> user/group/role
    - Managed policies
        - <strong>AWS managed</strong> or <strong>customer managed</strong>
        - standlone
        - attached to <strong>multiple</strong> users/group/roles

- Resource based policies - attached to a resource
    - <strong>Inline only</strong>
    - trust policies
    - grant specified <strong>principal</strong> permission to perform specific action on the resource

- IAM permissions boundaries - set the maximum permissions identity based policy can grant an IAM entity (use to avoid privilege escalation)

- Service Control Policies (SCP)
    - use IAM policy documents to apply permission to what can be done in a member account
    - similar to IAM permission boundaries, define maximum allowed permissions (API actions) but don't grant automatic permissions to execute those API actions

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowAll",  # just a friendly name, optional
            "Effect": "Allow",  # is allowed or denied?
            "Principal": {}     # who/what can perform action?
            "Action": "s3:*",   # what can be done with the resource?
            "Resource": "*",    # on which resource can action be performed?
            "Condition": {}     # what condition must be met? (MFA, IP etc)
        },
        {
            "Sid": "DenyThisBucket",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": ["arn:aws:s3:::thisbucket", "arn:aws:s3:::thisbucket/*"]
        }
    ]
}
```

### ABAC (Attribute-based Access Control)

Example: Allow based on <strong>condition</strong> that principal has tags "Unit": "DevOpsEngs"
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowCreateLogGroup",
            "Effect": "Allow",
            "Action": "logs:CreateLogGroup",
            "Resource": "arn:aws:logs:region:account_id:*",
            "Condition": {
                "StringEquals": {
                    "aws:PrincipalTag/Unit": "DevOpsEngs"
                }
            }
        }
    ]
}
```