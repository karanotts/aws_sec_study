# Amazon Inspector

Network and Host assesment for EC2 instances. 

Uses <strong>agent</strong> installed on EC2 hosts (AWS Systems Manager can automatically install Inspector agent on EC2s).

Automated security assesment service that helps improve security and compliance of apps deployed to AWS.

Checks for vulnerabilities and bad practices. 

Can help troubleshoot network accessibility of EC2 instances and security state of apps runnin in EC2 instances.

Cen be configured to run on schedule. 

- Network assesments:
    - network reachability (doesn't require agent to be installed on the host)
    - port reachability from outside the VPC
    - process reachability on those ports
- Host assesments:
    - common vulnerabilities and exposure (CVEs)
    - CIS (Center for Internet Security) host hardening
    - security best practices for Amazon Inspector