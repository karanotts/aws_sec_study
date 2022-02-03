## Edge security
- CloudFront
    - edge caching
    - Lambda@edge evaluation
- S3

# Network Security
- subnets
    - NACL
        - deny rules
        - compliance enforcement
    - route tables
        - enable internet accessibility 
        - limit outbound ranges
        - allow flow only to authorised endpoints
    - VPC Flow Logs (monitoring)
- security groups (endpoint)

# Egress Security
- Internet Gateway
    - control traffic with route tabels
- Virtual Private Gateway
    - VPN / DX Connect
    - control traffic with route tabels
- VPC Peering
    - control traffic with route tabels, NACLs and SGs
- Gateway Endpoint
    - S3 and DynamoDB only
- Interface Endpoint
- NAT Gateway
    - inside VPC

## VPC Strategy
- Same region:
    - by environment (sbox, dev, test, prod)
    - by workload compliance (public, internal, shared services)
    - by availability requirements (prod1, prod2, prod3, backup, DR)
- Multiple regions, same account:
    - by locality (EU, USA, AU)
    - by security requirements (adev, prod, audit, backup)
- Multiple regions, different accounts
    - by company architecture (marketing, sales, finance)
<br>
Transit Gateway - provides network interconnectivity. 



## Network Troubleshooting
Scenario: Traffic rejected between subnet A and subnet B
- where are they located? (same VPC, different VPC, hybrid)
- route table misconfiguration
- NACL rules (ie. inbound has no corresponding outbound)
- Security Group rules
- Firewall (physical or host based) rules blocking traffic

<br>
Scenario: User cannot modify network resource
- check IAM policies
- check AWS Organizations SCP
- change is being applied then reverted (ie. AWS Config detects config drif and Lambda is taking corrective action)