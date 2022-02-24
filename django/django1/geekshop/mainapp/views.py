from unicodedata import category
from django.shortcuts import get_object_or_404, render
from mainapp.models import Product, ProductCategory

# Create your views here.
def products(request, pk=None):
    title = 'Продукты'
    link_menu = ProductCategory.objects.all()
    
    if pk is not None:
        if pk == 0:
            products = Product.objects.all().order_by('price')
            category = {'name': 'все'}
        else:
            category = get_object_or_404(ProductCategory, pk=pk)
            products = ProductCategory.filter(category__pk=pk).order_by('price')
    
        context = {
        'title': title,
        'link_menu': link_menu,
        'products': products,
        'category': category,
        
        }    
    
        return render(request, "mainapp/products.html", context)

    some_product = Product.objects.all()
    
    context = {
        'title': title,
        'link_menu': link_menu,
        'products': some_product,
        }    
    
    return render(request, "mainapp/products.html", context)
    
