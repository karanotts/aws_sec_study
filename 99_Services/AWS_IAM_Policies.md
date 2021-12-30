# AWS IAM Policies

Policy - a set of allow or deny statements that get attached to identities inside AWS.

Explicit deny > explicit allow > implicit deny > implicit allow


- Identity based policies - attached to a principal or identity
    - Inline policies 
        - attached directly (1-to-1) to <strong>single</strong> user/group/role
    - Managed policies
        - standlone
        - attached to <strong>multiple</strong> users/group/roles

- Resource based policies - attached to a resource
    - Inline only
    - Trust policies
    - grant specified principal permission to perform specific action on the resource
        

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowAll",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
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

ABAC (Attribute-based Access Control)

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