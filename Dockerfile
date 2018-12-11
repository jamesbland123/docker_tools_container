## Dockerfile
FROM python:3.6.7-alpine3.8

RUN apk update && apk add wget zip bash make nano

RUN pip install --upgrade awscli

RUN wget -nv https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip \
&& unzip terraform_0.11.10_linux_amd64.zip \
&& mv terraform /usr/local/bin/terraform \
&& rm terraform_0.11.10_linux_amd64.zip

RUN wget -nv https://releases.hashicorp.com/packer/1.3.2/packer_1.3.2_linux_amd64.zip \
&& unzip packer_1.3.2_linux_amd64.zip \
&& mv packer /usr/local/bin/packer \
&& rm packer_1.3.2_linux_amd64.zip

WORKDIR /my-repo

CMD ["/bin/bash"]
