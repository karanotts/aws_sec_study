# AWS Cloud HSM

<strong>Single tenant</strong> hardware security modules in AWS cloud.

Provisioned by AWS but fully customer manager (AWS has no access to the unit where key are stored).

FIPS 140-2 Level 3 compliant (https://en.wikipedia.org/wiki/FIPS_140-2)

Accessed with industry standard APIs (PKCS#11, OpenSSL Dynamic Engine, JCE Java Cryptography Extension, Microsoft CryptoNG libraries)

Deployed into <strong>AWS managed CloudHSM VPC</strong> into which clients have no insight. 

No native integration with any AWS services (by design).

Can be used for SSL/TLS offload for web servers.

Enable <strong>Transparent Data Encryption TDE</strong> for Oracle Databases.

Can be used to protect Private Keys for private Certificate Athority.