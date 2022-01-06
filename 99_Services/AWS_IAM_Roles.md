# AWS IAM Roles

IAM Identity, can be referenced as principal in IAM Policies. 

Used (assumed) on a temporary basis, for a short period of time by other identities (users, apps, services).

- trust policies:
    - which identity is allowed to assume role
    - can be anonymous or federated
    - resource based policies

- permissions policies:
    - identity based policies

use of IAM roles:
- AWS services (ie. Lambda execution role)
- emergency (out of ordinary) situations - "break glass"
    - use RO for normal ops, assume RW for emergency
- federation 
    - external identity assumes role