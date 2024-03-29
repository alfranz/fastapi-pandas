# FastAPI - Pandas Docker Image 🐼 🐳

[![Build Docker image](https://github.com/alfranz/fastapi-pandas/actions/workflows/build-image.yml/badge.svg?branch=master)](https://github.com/alfranz/fastapi-pandas/actions/workflows/build-image.yml)

---

This Docker image contains dependencies suitable for data-centric webservices.

Docker Base Image: `python:3.11-slim-buster`

Python libraries:

- requests
- Jinja2
- aiofiles
- uvicorn[standard]
- fastapi
- pandas
- python-multipart
- psycopg2
- sqlalchemy

## How to use?

```
docker pull ghcr.io/alfranz/fastapi-pandas:latest
```

## Versions

This image will use the latest compatible versions of all dependencies. Might add versioning later. For now enjoy at your own risk 🔥.
