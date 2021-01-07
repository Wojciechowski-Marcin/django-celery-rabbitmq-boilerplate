from django.http import HttpResponse

from demoapp.tasks import demo_task


def demo_task_view(request):
    demo_task.delay()
    html = "<html><body>Task dispatched!</body></html>"
    return HttpResponse(html)
