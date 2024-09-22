## Use AWS python base image

FROM public.ecr.aws/lambda/python:3.12

## Copy over function specific code

COPY function/function.py function/requirements.txt /var/task/

## Install requirement

RUN python3.12 -m pip install -r /var/task/requirements.txt

## Set the file function.py and the function bundler as the lambda function

CMD ["funcion.handler"]