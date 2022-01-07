# Amazon GuardDuty

Intelligent <strong>threat detection service</strong> that continuously monitors AWS accounts and workloads. 

Identifies attackers through integrated threat intelligence feeds.

Uses machine learning to detect anomalies in activities (ie. unusual API calls, unauthorised deployments)

Can help detectt cryptocurrency mining, credential compromise behavious, API calls from known malicious IPs.

Can aggregate findings across organisation in a single account.

Using AWS GuardDuty for incident response:
- VPC Flow Logs: 
    - analyse network traffic on ENIs
    - VPC Flow Logs don't have to be enabled, GuardDuty uses independent streams on AWS backend
- DNS Logs:
    - capture DNS logs from EC2 queries
    - access DNS logs through <strong>AWS only resolvers</strong> (Route53)
- CloudTrail Events:
    - view history of API calls made within AWS account

Finding types:
- backdoor
    - identify compromised resource that is controlled by <strong>command and control</strong> server
- behaviour
    - detect unusual activity patterns
- cryptocurrency
    - detect crypto mining activities
- pentest
- persistence
    - detect a principal manifesting unusual behaviour
- policy
    - detect behaviour that's non compliant with policies
- recon
    - detect reconaisance attach
- privilege escalation
    - detect privilege escalation attach
- resource consumption
    - detect if principal with no history of creating resource suddenly performs actions (can indicate compromised credentials)
- stealth 
    - detect stealth attack (hiding its activities and tracks)
- trojan
    - detect trojan attack
- unauthorised access


White/black list IP addresses:
- Trusted IP lists, <strong>1 per region</strong>
- Threat lists, <strong>6 per region</strong>