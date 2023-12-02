from django.contrib import admin
from .models import Category, Product, Review, Order1, BookF, OrderItem1, publisher, Auther,BookPreference

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    pass

@admin.register(BookPreference)
class BookPreferenceAdmin(admin.ModelAdmin):
    pass
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    pass

@admin.register(Review)
class ReviewAdmin(admin.ModelAdmin):
    pass



@admin.register(Order1)
class Order1Admin(admin.ModelAdmin):
    pass

@admin.register(BookF)
class BookFAdmin(admin.ModelAdmin):
    pass

@admin.register(OrderItem1)
class OrderItem1Admin(admin.ModelAdmin):
    pass

@admin.register(publisher)
class PublisherAdmin(admin.ModelAdmin):
    pass

@admin.register(Auther)
class AutherAdmin(admin.ModelAdmin):
    pass
