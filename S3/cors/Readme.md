## Create Website 1

## Create a Bucket

```sh
aws s3 mb s3://cors-fun-dc-2231
```

## Change the block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-dc-2231 \
--public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false
```


## Create a bucket policy

aws s3api put-bucket-policy --bucket cors-fun-dc-2231 --policy file://bucket-policy.json

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-dc-2231 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that will be cross-origin

```sh
aws s3 cp index.html s3://cors-fun-dc-2231
```

## View the website an see if the index.html is there.

http://cors-fun-dc-2231.s3-website-us-east-1.amazonaws.com



## Create Website 2

## Create a Bucket

```sh
aws s3 mb s3://cors-fun-dc2-2231
```

## Change the block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-dc2-2231 \
--public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false
```


## Create a bucket policy

aws s3api put-bucket-policy --bucket cors-fun-dc2-2231 --policy file://bucket-policy2.json

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-dc2-2231 --website-configuration 
```

## Upload our JavaScript file

```sh
aws s3 cp hello.js s3://cors-fun-dc2-2231
```


## Create API Gateway with Mock response and then test the endpoint

curl -X POST -H "Content-Type: application/json" https://958zsohlog.execute-api.us-east-1.amazonaws.com/prod/hello

## Set CORS on our Bucket

aws s3api put-bucket-cors --bucket cors-fun-dc-2231 --cors-configuration file://cors.json





