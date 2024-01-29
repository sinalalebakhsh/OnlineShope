from django.contrib import admin

from .models import Product
from .models import Comment



class CommentsInLine(admin.StackedInline):
    model = Comment
    fields = ['author', 'body', 'star', 'active', ]



@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'price', 'active', ]

    inlines = [
        CommentsInLine, 
    ]


@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ['product', 'author', 'body', 'star', 'active', ]








