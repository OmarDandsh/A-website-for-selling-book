
from django.db import models
from django.utils import timezone
from django.urls import  reverse

from django.contrib.auth.models import User
# Create your models here.
class Category(models.Model):

    name = models.CharField(max_length=200,db_index=True)
    slug = models.SlugField(max_length=200,unique=True)
    id = models.BigAutoField(primary_key=True)
    class Meta:
        ordering = ('name',)
        verbose_name = 'category'
        verbose_name_plural = 'categories'

    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse('category_detail',args=[self.slug])


class Product(models.Model):
    y = [
       ('ورقي','ورقي'),
       ('الكتروني','الكتروني'),
       
    ]
    y1 = [
       ('عربي','عربي'),
       ('انكليزي','انكليزي'),
     
     
       
    ]
    y2 = [
       ('مبرمجين','مبرمجين'),
       ('عامة الناس','عامة الناس'),
       ('اقتصاديين','اقتصاديين'),
       ('أطفال','أطفال'),
       
    ]
    
    Title = models.CharField(max_length=200, db_index=True)
    ISBN = models.CharField(max_length=200, db_index=True)
    Format = models.CharField(max_length=50, null=True, choices=y, default='ورقي')


    Language = models.CharField(max_length=50, null=True, choices=y1, default='عربي')



    published_date = models.DateField(default='2023-06-12')
    id = models.BigAutoField(primary_key=True)
    Target_audience = models.CharField(max_length=50,null=True,choices=y2)
    Page_Count = models.IntegerField()
    Edition = models.IntegerField()
    Series = models.IntegerField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.TextField(blank=True)
    category = models.ForeignKey(Category,related_name='products',on_delete=models.CASCADE)
    image = models.ImageField(upload_to='products/bookCovers',blank=True)
    available= models.BooleanField(default=True) #part_Series
    slug = models.SlugField(max_length=200, db_index=True)
    
    class Meta:
        ordering = ('-Title',)
        index_together = (('id', 'slug'),)
    
    def __str__(self):
            return self.Title

    def get_absolute_url(self):
        return reverse('product_detail',args=[str(self.slug)])
'''
    
  
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, db_index=True)
    image = models.ImageField(upload_to='products/%Y/%m/%d',blank=True)
    image2 = models.ImageField(upload_to='products/%Y/%m/%d',blank=True)
    image3 = models.ImageField(upload_to='products/%Y/%m/%d',blank=True)
  
    created = models.DateTimeField(default=timezone.now)
    updated = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ('-created',)
        index_together = (('id', 'slug'),)
'''
   



class Review(models.Model):
    id = models.BigAutoField(primary_key=True)
    product = models.ForeignKey(Product,related_name='products',on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=20)
    rating = models.IntegerField( default=1)
    review_comment = models.TextField(max_length=200)
    created = models.DateTimeField(default=timezone.now)
    class Meta:
        ordering = ('-created',)
        
    def __str__(self):
        return self.product.name
    


    
    
class Order1(models.Model):
    
    created = models.DateTimeField(default=timezone.now)
    id = models.BigAutoField(primary_key=True)
    custumer =models.ForeignKey(User ,on_delete=models.CASCADE)


class BookF(models.Model):
    id = models.BigAutoField(primary_key=True)
    created = models.DateTimeField(default=timezone.now)
    fatoris=models.BooleanField(default=True)
    blocked=models.BooleanField(default=True)
    custumer =models.ForeignKey(User ,on_delete=models.CASCADE)
    
class OrderItem1(models.Model):
    order = models.ForeignKey(Order1,
                              related_name='items',
                              on_delete=models.CASCADE)
    product = models.ForeignKey(Product,
                                related_name='order_items1',
                                on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    quantity = models.PositiveIntegerField(default=1)
    id = models.BigAutoField(primary_key=True)

    def __str__(self):
        return str(self.id)

    def get_cost(self):
        return self.price * self.quantity
class publisher(models.Model):
    
    created = models.DateTimeField(default=timezone.now)
    id = models.BigAutoField(primary_key=True)
    product =models.ForeignKey(Product ,on_delete=models.CASCADE)


class Auther(models.Model):
    
    name = models.CharField(max_length=100)
    id = models.BigAutoField(primary_key=True)
    product =models.ForeignKey(Product ,on_delete=models.CASCADE)
    
    
class BookPreference(models.Model):
    PREFERENCE_CHOICES = [
        ('important', 'مهم'),
        ('exclude', 'استبعاد'),
        ('neutral', 'بدون تمييز'),
    ]

    customer = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    preference = models.CharField(max_length=10, choices=PREFERENCE_CHOICES)

    class Meta:
        unique_together = ('customer', 'product')



