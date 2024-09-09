## Create a new bucket

```sh
aws s3api create-bucket --bucket acl-example-aw-2122 --region us-east-1
```

## Turn off Block Public Access for ACLs

```sh
aws s3api put-public-access-block  \
--bucket acl-example-aw-2122 \
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false ,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

```sh
aws s3api get-public-access-block --bucket acl-example-aw-2122 
```

## Change Bucket Ownership

```sh
aws s3api put-bucket-ownership-controls  \
--bucket acl-example-aw-2122 \
--ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Change ACLs to allow for user in another AWS Account

```sh
aws s3api put-object-acl \
--bucket acl-example-aw-2122 \
--access-control-policy file:///workspace/AWS-EXAMPES/S3/acls/policy.xml
```

## Access Bucket from other account

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-example-aw-2122
aws s3 ls s3://acl-example-aw-2122
```

## Clean up

```sh
aws s3 rm s3://acl-example-aw-2122/bootcamp.txt
aws s3 rb s3://acl-example-aw-2122/
```


d57d6ad1ce1e1d8f0c3044d05267d1739a435179eab6fcd551780ea278098a65
