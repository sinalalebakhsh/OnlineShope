from django import forms


class AddToCartProductForm(forms.Form):
    quantity = forms.TypedChoiceField()



