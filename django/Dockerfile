FROM python:3.9.1-slim AS base

ENV PYTHONUNBUFFERED=1

RUN apt-get update -y \
    && apt-get install --no-install-recommends -y netcat=1.10-41.1 \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
COPY requirements /requirements

# #
# DJANGO
# #

FROM base AS django

RUN pip install --no-cache-dir -r /requirements/django.txt
WORKDIR /app
ENTRYPOINT ["sh", "./scripts/django_entrypoint.sh"]

# #
# CELERY
# #

FROM base AS celery

RUN pip install --no-cache-dir -r /requirements/celery.txt
WORKDIR /app
ENTRYPOINT ["sh", "./scripts/celery_entrypoint.sh"]
