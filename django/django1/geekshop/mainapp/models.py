from django.db import models
from django.db.models.base import Model
from django.db.models.deletion import CASCADE

# Create your models here.
class ProductCategory(models.Model):
    name = models.CharField(verbose_name='имя', max_length=64, unique=True)
    description = models.TextField(verbose_name='описание', blank=True)
    
    created = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)
    
    def __str__(self):
        return self.name

class Product(models.Model):
    
    category = models.ForeignKey(
        ProductCategory,
        on_delete=CASCADE,
    )
    
    name = models.CharField(
        verbose_name='имя продукта', 
        max_length=128,
    )
    
    image = models.ImageField(
        upload_to = 'products_images', 
        blank=True,
    )
    
    short_desc = models.CharField(
        verbose_name='короткое описание продукта', 
        max_length=64,
        blank=True,    
    ) 
    
    description = models.TextField(
        verbose_name='описание', 
        blank=True,
    )
    
    price = models.DecimalField(
        verbose_name='цена продукта', 
        max_digits = 8,
        decimal_places = 2,
        default = 0,
    )
    
    quantity = models.PositiveIntegerField (
        verbose_name = 'на складе',
        default = 0, 
    )
    
    def __str__(self):
        return f'{self.name} ({self.category.name}) '