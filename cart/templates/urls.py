from django.urls import path

from .view import cart_detail_view

urlpatterns = [
    path('', cart_detail_view, name='cart_detail'),
]




