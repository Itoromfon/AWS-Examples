## Create a user with no permission 

We need to create a new user with no permissions and generate out access keys

```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```
Copy the access key and secret here
```sh
aws configure
```

Make sure you don't have access to S3

```sh
aws s3 ls --profile sts
```

## Create a Role

We need to create a role that will access a new resource

## Use new user credentials and assume role

```sh
aws iam put-user-policy \
--user-name sts-machine-user \
--policy-name StsAssumePolicy \
--policy-document file://policy.json
```

## To assume a role we use this.
```sh
aws sts assume-role \
--role-arn arn:aws::iam \ 
--role-session-name s3-sts-fun \
--profile sts
```

```sh 
aws s3 get-caller-identity --profile assumed
```

## To list out our bucket
```sh
aws s3 ls --profile assumed
```

## CleanUp

Tear down your cloudformation stack via AWS Management Console

```sh
aws iam delete-user-policy --user-name sts-machine-user --policy-name ExamplePolicy
aws iam delete-user --user-name sts-machine-user
```