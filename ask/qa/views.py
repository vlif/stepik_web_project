from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# В файле ask/qa/views.py создайте тестовый контроллер
def test(request, *args, **kwargs):
    return HttpResponse('OK')
