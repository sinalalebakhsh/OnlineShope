

class Cart:
    def __init__(self, request):
        """
        Initialize the cart
        """
        self.request = request
        self.session = request.session
        cart = self.session.get('cart')
        if not cart:
            self.session['cart'] = {}
            cart = self.session['cart']
        self.cart = cart 

    def add(self, product, quantity=1):
        """
        Add the specified to the cart if was exists
        """
        product_id = str(product.id)
        if product_id not in self.cart:
            self.cart[product_id] = {'quantity': quantity}
        else:
            self.cart[product_id]['quantity'] += quantity
    
    def save(self):
        """
        changes session as modified and store it
        """
        self.session.modified = True



