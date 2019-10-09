FROM ubuntu:18.04
FROM python:3
WORKDIR /Main
COPY Main.py .
ENTRYPOINT ["python", "Main.py"]
