from config.celery import app


@app.task(bind=True)
def demo_task(self):
    return "Task successful!!"
