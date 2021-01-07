from django.contrib import admin
from django.urls import path
from demoapp.views import demo_task_view

urlpatterns = [
    path('demo-task/', demo_task_view),
]
