from django.views import generic


from .models import Product

class ProductsListView(generic.ListView):
    model = Product
    template_name = 'products/products_list.html'
    context_object_name = 'products'


