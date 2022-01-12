# AWS Config

RECORD CONFIG CHANGES OVER TIME ON RESOURCES.

Doesn't prevent changes, only audits and highlights non compliance. 

Notify about changes via Lambda or SNS. 

<br><br>
Continuous monitoring, recording and assesment service that detects non-compliance configurations. 

Config operations are limited to regions.

Allows tracking relationhips between resources and reviewing dependencies. 

Allows capturing comprehensive history of AWS resource configuration changes to simplify troubleshooting. 

Use cases for AWS Config:
- Discovery:
    - discover resources, record their current configuration and caputre any changes to that configuration, retain details of resources that have been deleted (snapshots)
- Change Management:
    - when resources are created, updated or deleted > SNS notifications of any changes
    - discover relationships between resources to see how change to one resource impacts other resources
- Continuous Audit and Compliance:
    - helps assess compliance with regulatory standards
    - evaluates configuration changes against desired configuration state
- Compliance as Code:
    - customised rules + Lambda
- Troubleshooting:
    - identify recent configuration changes that might've caused issues
- Security Analysis:
    - monitor and evaluate configuration against potential security weaknesses
    - trigger SNS to alert security teams
    - review configuration history

Example of using AWS Config for incident response:
- Create <strong>AWS Config Rule</strong> that will flag non-compliant service (ie. VPC flow logs disabled)
- Create <strong>Lambda Function</strong> to remediate issue (ie. enable VPC flow logs)
- Create <strong>CloudWatch Events Rule</strong> based on event from Aws Config to trigger Lambd Function
- (Optional) Create SNS Topic to get notifications by text or email

Config rules are cost drivers. The more rules are applied, the higher the cost. 

<strong>Conformance packs</strong> can apply sets of Config Rules across accounts. 

Consider using with CloudTrail for easy attribution of who did what and when.