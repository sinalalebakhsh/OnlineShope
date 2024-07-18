from django.urls import path

from .views import ProductsListView

urlpatterns = [
    path('', ProductsListView.as_view(), name='product_list'),
]
