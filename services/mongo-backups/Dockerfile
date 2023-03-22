FROM mongo:6.0.4-focal

RUN apt-get -y update --fix-missing
RUN apt-get -y install curl bash cron python

RUN mkdir /workdir
WORKDIR /workdir

ADD . /workdir
RUN ./install_gcloud_sdk.sh

CMD ["./entrypoint.sh"]
