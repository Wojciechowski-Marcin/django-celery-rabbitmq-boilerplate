#!/bin/bash

cd src

echo -e "\nMaking migrations..."
python manage.py makemigrations

echo -e "\nMigrating database..."
python manage.py migrate

echo -e "\nCreating superuser..."
python manage.py createsuperuser --no-input \
    --username $DJANGO_SUPERUSER_USER --email $DJANGO_SUPERUSER_EMAIL

echo -e "\nRunning development server..."
python manage.py runserver 0.0.0.0:8000
