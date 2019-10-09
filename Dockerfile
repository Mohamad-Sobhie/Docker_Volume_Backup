FROM ubuntu:18.04
FROM python:3
VOLUME ["Main"]
WORKDIR /Main
COPY Main.py .
ENTRYPOINT ["python", "Main.py"]
