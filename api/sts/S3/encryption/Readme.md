## Create a Bucket

aws s3 mb s3://encryption-fun-cm-321

### Create a file and Put-object with encryption SSE-S3

echo "Hello World!" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-cm-321


### Put object with encryption of SSE-KMS

aws s3api put-object \
 --bucket encryption-fun-cm-321 \
 --key hello.txt \
 --body hello.txt 
 --server-side-encryption aws:kms
 --sse-kms-key-id

 ### Put Object with SSE-C [Failed Attempt]

 export BASE64_ENCODED_KEY=$(openssl rand 32)
 echo $BASE64_ENCODED_KEY

 export MD5_VALUE=$(echo -n $BASE64_ENCODED_KEY | base64 --decode | md5sum | awk '{print $1}' | base64 -w0)


 aws s3api put-object \
 --bucket encryption-fun-cm-321 \
 --key hello.txt \
 --body hello.txt 
 --sse-customer-algorithm-AES256 \
 --sse-customer-key $BASE64_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE

### Put Object with SSE-C via aws s3

openssl rand 32 -out ssec.key

aws s3 cp hell.txt s3://encryption-fun-cm-321/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key

### Now let doenloads the file
aws s3 cp s3://encryption-fun-cm-321/hello.txt hello.txt