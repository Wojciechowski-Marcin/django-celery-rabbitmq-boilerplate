#!/bin/bash

echo "Waiting for postgres..."
sh -c './scripts/wait-for.sh postgres:5432 -- ./scripts/start_celery.sh'
