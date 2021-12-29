# Encryption on AWS

## Protection at rest
- client-side encryption: data is encrypted before sending it to AWS
- server-side encryption: data is enctypted on AWS after it's been received by the service


## Protection in transit
- end to end encryption using TLS
- IPsec with VPN

![Encryption in transit](./images/enc_in_trans.jpg)


- [AWS KMS](./99_Services/AWS_KMS.md)
- [AWS Cloud HMS](./99_Services/AWS_Cloud_HMS.md)
- [AWS Certificate Manager](./99_Services/AWS_Certificate_Manager.md)
- [AWS Secrets_Manager](./99_Services/AWS_Secrets_Manager.md)