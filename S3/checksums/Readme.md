## Create a new bucket

```md
aws s3 mb s3://checksums-example-ab-2233
```

## Create a file that we will check sums on

```
echo "Hello Mars" > myfile.txt
```

## Get a checksum of a file for md5

md5sum myfile.txt
d41d8cd98f00b204e9800998ecf8427e  myfile.txt

## Upload our file to S3
aws s3 cp myfile.txt s3://checksums-example-ab-2233
aws s3api head-object --bucket checksums-example-ab-2233 --key myfile.txt

## let upload a file with different kin of checksum

```sh
sudo apt install rhash -y
rhash --crc32 --simple myfile.txt
```

```sh
aws s3api put-object \
--bucket="checksums-example-ab-2233" \
--key="myfilesha1.txt" \
--body"myfile.txt" \
--checksum-algorithm="SHA1"
--checksum-sha1="da39a3ee5e6b4b0d3255bfef95601890afd80709"
```