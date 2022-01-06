echo "super secret text" > MY_FILE.txt

aws kms encrypt \
    --key-id alias/CHANGE_ME \
    --plaintext fileb://MY_FILE.txt \
    --output text \
    --query CiphertextBlob \
    | base64 --decode > MY_ENCRYPTED_FILE.enc 
    
aws kms decrypt \
    --ciphertext-blob fileb://MY_ENCRYPTED_FILE.enc \
    --output text \
    --query Plaintext | base64 --decode > MY_DECRYPTED_FILE.txt