## Convert to JSON

```sh
yq -o json policy.yml > policy.json
```

## The bash script

```sh
/convert
```

## Create am IAM Policy

```sh 
aws iam create-policy \
--policy-name my-fun-policy \
--policy-document file://policy.json
```