## Create content bucket

```sh
aws s3 mb s3://videos.example12435112.com --region us-east-1
```


## Create PipeLine

```sh
aws elastictranscoder create-pipeline \
--name Default \
--input-bucket salesooffice.example.com-source \
--role arn:aws:iam::123456789012:role/Elastic_Transcoder_Default_Role \
--notifications Progressing="",Completed="",Warning="",Error=arn:aws:sns:us-east-1:111222333444:ETS_Errors \
--content-config file://config.json \
--thumbnail-config file://config.json
```