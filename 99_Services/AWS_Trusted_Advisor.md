# AWS Trusted Advisor

Inspects AWS environment to make recommendations for improving performance, save cost or close security gaps.

Can be configured to send weekly recommendations and change notifications. 

<strong>Business and Enterprise-level support</strong> gives access to full suite of TA best-practise checks.

Trusted Advisor:
- detects if MFA is enablef on Root Account
- checks for S3 buckets with open access permissions
- checks for security groups that allow unrestricted access


Example of using AWS Config for incident response:
- Create <strong>CloudWatch Events Rule</strong> to detect red alert status in Trusted Advisor (ie. security group port 22 unrestricted access)
- Create <strong>Lambda Function</strong> to remediate issue (ie. update security group rule via EC2 API command)
- (Optional) Create SNS Topic to get notifications by text or email
<br><br>
7 free core checks (Basic and Developer tier):
- S3 Bucket permissions (not objects)
- Security Groups (specific ports)
- IAM Use
- MFA on Root Account enabled
- EBS Public Snapshots
- RDS Public Snapshots
- 50 service limit check

Business and Enterprise tier:
- all included in core checks
- 115 further checks