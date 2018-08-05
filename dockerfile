FROM debian

MAINTAINER Vellingiri <vellingiribks@gmail.com>

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /data/requirements.txt

WORKDIR /data

RUN pip install -r requirements.txt

COPY . /data

ENTRYPOINT [ "python" ]

CMD [ "web.py" ]
