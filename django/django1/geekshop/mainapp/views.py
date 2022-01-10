from django.shortcuts import render
from mainapp.models import Product

# Create your views here.
def products(request, pk):
    title = 'Продукты'
    product = Product.objects.get(id=pk)
    link_menu = [
        {"href": "products_all", "name": "все", "id": product},
        {"href": "products_home", "name": "дом"},
        {"href": "products_office", "name": "офис"},
        {"href": "products_modern", "name": "модерн"},
        {"href": "products_classic", "name": "классика"},
    ]
    
    # product = Product.objects.get(id=pk)
    
    context = {
        'title': title,
        'link_menu': link_menu
    }
    
    
    return render(request, "mainapp/products.html", context)

