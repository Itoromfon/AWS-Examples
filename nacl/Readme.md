## Create NACL

```sh
aws ec2 create-network--acl --vpc-id <vpc-name>
```

### Add entry

```sh
aws ec2 create-network-acl-entry \
--network-acl-id acl-xxxxxxxx \
--ingress \
--rule-number 90 \
--protocol -1 \
--port-range From-0,To-65535 \
--cidr-block 174.5.100.3/32 \
--rule-action deny
```

## Get AMI for Amazon Linux 2