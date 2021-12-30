## IAM Users

Root user - has permissions to all resources. Remove access keys and enable MFA. Don't use.

IAM User: friendly name or ARN.


- 5000 IAM Users per account
- IAM User can be a member of 10 IAM Groups


## ARN Amazon Resource Name

```arn:partition:service:region:account_id:resource_id```

`arn:aws:s3:::bucket` - bucket, but not he objects inside

`arn:aws:s3:::bucket/*` - objects (content) in the bucket, but not the bucket itself