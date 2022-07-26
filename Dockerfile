# Builder for psycopg
FROM python:3.9-slim-buster as builder

RUN apt-get update \
    && apt-get -y install libpq-dev gcc

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
COPY requirements.txt requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt

# Actual image contents

FROM python:3.9-slim-buster

RUN apt-get update \
    && apt-get -y install libpq-dev && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /opt/venv /opt/venv

LABEL maintainer="Alexander Franz <alex@alexfranz.com>"
LABEL org.opencontainers.image.source="https://github.com/alfranz/fastapi-pandas"

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONBUFFERED=1 \
    PATH="/opt/venv/bin:$PATH"

CMD [ "bash" ]