from django.db import models
from django.shortcuts import reverse
from django.contrib.auth import get_user_model
from django.utils.translation import gettext_lazy as _


class Product(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    price = models.PositiveIntegerField(default=0)
    active = models.BooleanField(default=True)
    
    datetime_created = models.DateTimeField(auto_now_add=True)
    datetime_modified = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('product_detail', args=[self.pk])


class ActiveCommentManager(models.Manager):
    def get_queryset(self):
        return super(ActiveCommentManager, self).get_queryset().filter(active=True)


class Comment(models.Model):
    PRODUCT_STARS = [
        ('1', _('Very bad')),
        ('2', _('Bad')),
        ('3', _('Ordinary')),
        ('4', _('Good')),
        ('5', _('Perfect')),
    ]

    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='comments', ) 
    author = models.ForeignKey(
        get_user_model(), 
        on_delete=models.CASCADE, 
        related_name='comments', 
        verbose_name='author',
        )
    body = models.TextField(verbose_name=_('Text'))
    star = models.CharField(max_length=10, choices=PRODUCT_STARS, verbose_name='Score')

    date_time_created = models.DateTimeField(auto_now_add=True)
    date_time_modified = models.DateTimeField(auto_now=True)

    active = models.BooleanField(default=True)

    # Custom Manager
    objects = models.Manager()
    active_comments_manager = ActiveCommentManager()
    # e.g.
    # Comment.objects.all()
    # Comment.objects.filter(...)
    # etc
    # AND
    # Comment.active_comments_manager.all()
    # Comment.active_comments_manager.filter(...)

    def get_absolute_url(self):
        return reverse('product_detail', args=[self.product.id])


