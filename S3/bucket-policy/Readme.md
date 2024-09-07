## Create Bucket

```sh
aws s3 mb s3://bucket-policy-example-ad-5144
```

## Create Bucket policy

aws s3api put-bucket-policy --bucket bucket-policy-example-ad-5144 --policy file://json

## In the other account access the bucket

touch bootcamp.txt
aws s3 cp bootcamp.txt s3://bucket-policy-example-ad-5144
aws s3 ls s3://bucket-policy-example-ad-5144

## CleaUp

aws s3 rm s3://bucket-policy-example-ad-5144 bootcamp.txt
aws s3 rb s3://bucket-policy-example-ad-5144    