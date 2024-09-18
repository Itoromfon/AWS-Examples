## Crete a bucket

```sh
aws s3 mb s3://source-datasync-556221
aws s3 mb s3://dest-datasync-556431
```

## Upload the file

```sh
touch hello.txt
aws s3 cp hello.txt s3://source-datasync-556221/data/hello.txt
```