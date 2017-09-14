# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# В файле ask/qa/views.py создайте тестовый контроллер
def test(request, *args, **kwargs):
	body = 'OK'
	body += '\n ' + str(request.GET.get('a', 2))
    #return HttpResponse('OK')
	return HttpResponse(body)
