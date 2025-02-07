FROM python:3

WORKDIR /usr/src/app

RUN apt update && apt install libcurl4-openssl-dev libssl-dev python3-dev build-essential -y

COPY . .

EXPOSE 8000
EXPOSE 8008
EXPOSE 8080
EXPOSE 8081
EXPOSE 8443
EXPOSE 8983
EXPOSE 9200

CMD ["python", "./log4pot-server.py", "@log4pot.conf"]
