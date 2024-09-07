## Create a bucket

aws s3 mb s3://class-fun-ag-4323

## Create a file 

echo "Hello Pluto!" > hello.txt
aws s3 cp hello.txt s3://class-fun-ag-4323 --storage-class STANDARD_IA

## Cleanup

aws s3 rm s3://class-fun-ag-4323/hello.txt 
aws s3 rb s3://class-fun-ag-4323