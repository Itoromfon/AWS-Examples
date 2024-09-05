## Create a bucket

aws s3 mb s3://metadata-fun-bcv-2231

### Create a new filemetadata-fun-bcv-2231 

echo "Hello Mars" > hello.txt

## Upload files with metadata

aws s3api put-object --bucket --key hello.txt --body hello.txt --metadata Planet=Mars

## Get Metadata through head object

aws s3api head-object --bucket metadata-fun-bcv-2231 --key hello.txt 

