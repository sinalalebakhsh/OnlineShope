

class Cart:
    def __init__(self, request):
        self.request = request

        self.session = request.session

        self.session['cart'] = {}



