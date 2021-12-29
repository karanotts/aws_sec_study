# AWS WAF

Web Application Firewall (L7 HTTP/s)

Allows to configure rules to allow, block or monitor (count) web requests based on conditions:
    - IP addresses
    - HTTP headers
    - HTTP body
    - URI strings
    - SQL injections
    - XSS

### AWS WAF Traffic Filtering
- near real time visibility into web traffic that allows creating rules in Amazon CloudWatch
- protects CloudFront, ALB and API Gateway
- rate awareness, 
- geo blocks


Web Access Control List (WEBACL) integrated with ALB, API Gateway and CloudFront
- rules are added to WEBACL and evaluated on traffic entry