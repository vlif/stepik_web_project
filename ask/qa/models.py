# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class QuestionManager(models.Manager):
	def new(self):
		return self.order_by('-added_at')
	def popular(self):
		return self.order_by('-rating')

class Question(models.Model):
	objects = QuestionManager()

	title = models.CharField(max_length=255)
	text = models.TextField()
	added_at = models.DateTimeField(blank=True, auto_now_add=True)
	rating = models.IntegerField(default=0)
	author = models.ForeignKey(User) #, on_delete=models.SET_NULL
	# Если не указать параметр related_name при создании связи, 
    # то для поля author в модели User будет создана обратная ссылка question_set
    # и для поля likes будет попытка создать такое же поле  question_set, что приводит к ошибке, т.к. имена совпадают.
	likes = models.ManyToManyField(User, related_name='question_like_user')

class Answer(models.Model):
	text = models.TextField()
	added_at = models.DateTimeField(blank=True, auto_now_add=True)
	question = models.ForeignKey(Question) #, on_delete=models.CASCADE
	author = models.ForeignKey(User) #, on_delete=models.SET_NULL
