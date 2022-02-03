# Amazon VPC Flow Logs

Capture information about the in and out IP traffic on network interfaces.

Only capture PACKET METADATADA not contents (use sniffers if you need contents). 

Apply at:
- VPC level (covers all subnets and NICs down)
- subnet level (covers all NICs down, won't capture traffic between subnets)
- NIC

Not real time. 

Can be shipped to S3 or CloudWatch Logs. 