#!/bin/bash

cd src

echo -e "\nRunning development server..."
watchmedo auto-restart --directory=./ --pattern=*.py --recursive -- \
    celery \
        --app config.celery.app worker \
        --loglevel INFO \
        --hostname=worker@%h \
        --uid=nobody \
        --gid=nogroup
