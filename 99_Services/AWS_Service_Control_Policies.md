# AWS SCP

### Service Control Policies are account permissions boundaries. 

- don't grant permissions
- allow or deny (if SCP is enabled, default is `Allow * *` - so all is allowed, use implicit deny to address that)
- JSON
- Can be attached to:
    - organization root
    - OU
    - member account

- Management account is <strong>not</strong> affected by SCPs!

- Can limit what the account can do, including <strong>root user</strong>