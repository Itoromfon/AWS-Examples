
## Create our bucket
```sh
aws s3 mb s3://prefixes-fun-ab-3351
```

## Create our folder
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3351" --key="hello/" 
```

## Create many folders
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3351" --key="hello/" 
```

```sh
aws s3api put-object --bucket="prefixes-fun-ab-3351" --key="Lorem ipsum dolor sit amet, consectetur adipiscing elit/ Donec scelerisque ligula et molestie dictum/ In sagittis velit eget nisl porttitor tincidunt/ Cras felis dui, scelerisque ut consequat sit amet, sollicitudin et diam/ Curabitur vehicula eleifend augue et rutrum/ Aenean cursus ligula a sapien volutpat facilisis/ Integer ligula mauris, dapibus a sagittis sed, porta nec nunc/ Vivamus id magna id dui varius mattis/ In vel dolor vel est pretium laoreet ut vel metus/ Sed egestas libero dui/ Nulla a diam fermentum, viverra ante accumsan, ullamcorper purus/ Proin molestie mauris lacinia, placerat sem non, molestie enim/ Praesent pellentesque, lacus ac blandit suscipit, magna justo laoreet augue, eget consequat sem massa id augue/ Cras dictum ultricies erat ut vulputate/ Integer dignissim, neque sed sollicitudin venenatis, ligula eros volutpat arcu, sodales iaculis purus neque in elit/ Donec fermentum metus eros, quis ultrices nibh semper eget/Mauris eu dictum arcu, non laoreet eros/ Mauris eu dictum arcu, non" 
```


## Try and break the 1024 limit
```sh
aws s3api put-object --bucket="prefixes-fun-ab-3351" --key="Lorem ipsum dolor sit amet, consectetur adipiscing elit/ Donec scelerisque ligula et molestie dictum/ In sagittis velit eget nisl porttitor tincidunt/ Cras felis dui, scelerisque ut consequat sit amet, sollicitudin et diam/ Curabitur vehicula eleifend augue et rutrum/ Aenean cursus ligula a sapien volutpat facilisis/ Integer ligula mauris, dapibus a sagittis sed, porta nec nunc/ Vivamus id magna id dui varius mattis/ In vel dolor vel est pretium laoreet ut vel metus/ Sed egestas libero dui/ Nulla a diam fermentum, viverra ante accumsan, ullamcorper purus/ Proin molestie mauris lacinia, placerat sem non, molestie enim/ Praesent pellentesque, lacus ac blandit suscipit, magna justo laoreet augue, eget consequat sem massa id augue/ Cras dictum ultricies erat ut vulputate/ Integer dignissim, neque sed sollicitudin venenatis, ligula eros volutpat arcu, sodales iaculis purus neque in elit/ Donec fermentum metus eros, quis ultrices nibh semper eget/Mauris eu dictum arcu, non laoreet eros/ Mauris eu dictum arcu, non/hello.txt" --body="hello.txt" 
```