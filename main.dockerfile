FROM python:3.13 AS builder

RUN apt update && apt install -y git

WORKDIR /app

COPY setup.sh setup.sh
COPY getImage.sh getImage.sh
RUN ["chmod", "+x", "-R", "./"]

RUN ["bash", "-c", "./setup.sh"]

CMD ["bash", "-c", "./getImage.sh"]
