from django.urls import path
from . import views


urlpatterns = [
    path('',views.index, name='index'),
    path('product/detail/<slug:slug>', views.product_detail,name='product_detail'),
    path('product/all-products',views.product_list,name='product_list'),
    path('category/<slug:category_slug>',views.product_list,name='category_detail'),
    path('all-categories/',views.all_Categories,name='all_categories'),
    path('contact-us/',views.contact_us,name='contact_us'),
    path('search/',views.search_Result,name='search'),
    path('product/detail/review/<int:product_id>',views.Comment_Review,name='review'),
    path('set_book_preference/', views.set_book_preference, name='set_book_preference'),
    path('index1/', views.index1, name='index1'),
    path('deleted_products_list/', views.deleted_products_list, name='deleted_products_list'),
    path('clustered_products/', views.cluster_products, name='clustered_products'),
]