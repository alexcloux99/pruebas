
FROM python:3.9-slim

ENV TOOL1="pip3"
ENV TOOL2="python"

RUN apt-get update && apt-get install -y \
    wget \
    zip \
    sudo \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

