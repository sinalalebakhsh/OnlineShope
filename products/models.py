from django.db import models


class Product(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    price = models.PositiveIntegerField(default=0) # for Dollar use models.DecimalFields
    active = models.BooleanField(default=True)

    datetime_created = models.DateTimeField(auto_now_add=True)
    dateTime_modified = models.DateTimeField(auto_now=True)




