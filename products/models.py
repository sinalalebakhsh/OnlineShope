from django.db import models
from django.shortcuts import reverse
from django.contrib.auth import get_user_model


class Product(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    price = models.PositiveIntegerField(default=0) # for Dollar use models.DecimalFields
    active = models.BooleanField(default=True)
    # cover = 

    datetime_created = models.DateTimeField(auto_now_add=True)
    dateTime_modified = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
    

    def get_absolute_url(self):
        return reverse('product_detail', args=[self.pk])






class Comment(models.Model):
    author = models.ForeignKey(get_user_model, on_delete=models.CASCADE, related_name='comments',)
    body = models.TextField()