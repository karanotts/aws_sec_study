# AWS Secrets Manager

Secrets management service that helps storing, rotating, managing and retriewing credentials, <strong>API keys and other passwords</strong> throughout their life cycle.

Usable from console, CLI, API or SDKs (integration - meant to be intergated with applications).

Supports <strong>automatic rotation</strong> using Lambda functions. 

Secrets are secured using KMS. Need access to both <strong>KMS</strong> and Secrets Manager to access secrets (role separation).

Inbuilt integration (sync) for:
    - RDS
    - Redshift
    - DocumentDB
    - AWS logging and monitoring services