from django.views import generic


from .models import Product

# CBV is stand for -> Class-based View
class ProductsListView(generic.ListView): 
    # model = Product
    queryset = Product.objects.filter(active=True)
    template_name = 'products/products_list.html'
    context_object_name = 'products'


class ProductDetailView(generic.DetailView):
    model = Product
    template_name = 'products/product_detail.html'
    context_object_name = 'prodduct'


