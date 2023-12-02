from django.shortcuts import render,redirect
from django.shortcuts import render, get_object_or_404
from .models import Category, Product, Review
from django.views.generic import  DetailView
from cart.forms import CartAddProductForm
from django.contrib import messages
from django.shortcuts import render, get_object_or_404
from .models import Product,  Order1, OrderItem1 ,BookPreference
from django.db.models import Q
from django.http import HttpResponseNotAllowed
from mlxtend.frequent_patterns import fpgrowth , apriori
from mlxtend.frequent_patterns import association_rules
import pandas as pd
from mlxtend.preprocessing import TransactionEncoder
from django.shortcuts import render
import pickle
import numpy as np
from sklearn.cluster import KMeans
from .models import BookPreference, Product
from sklearn.preprocessing import StandardScaler


def index1(request):
    products = Product.objects.all()
    predicted_prices = []

   
    filename = "bookshop/static/priceRegressionk.bin"
    loaded_model = pickle.load(open(filename, 'rb'))
    format_mapping = {'ورقي': 1, 'الكتروني': 2}
    language_mapping = {'عربي': 1, 'انكليزي': 2}
    target_audience_mapping = {'مبرمجين': 1, 'عامة الناس': 2, 'اقتصاديين': 3, 'أطفال': 4}
    scaler = StandardScaler()
    page_count_values = [[product.Page_Count] for product in products]
    scaler.fit(page_count_values)
    for product in products:
        format_value = format_mapping.get(product.Format, 1)
        language_value = language_mapping.get(product.Language, 1)
        target_audience_value = target_audience_mapping.get(product.Target_audience, 1)
        page_count_scaled = scaler.transform([[product.Page_Count]])
        features = pd.DataFrame([[int(product.available), int(product.category_id), int(product.Edition), format_value, language_value, page_count_scaled, int(product.Series), target_audience_value]])
        features.columns = ['available', 'category_id', 'Edition', 'Format', 'Language', 'Page_Count', 'Series', 'Target_audience']
        predicted_price = loaded_model.predict(features)
        if predicted_price[0] < 0:
            predicted_price[0] = -predicted_price[0]
        predicted_prices.append((round(predicted_price[0], 3)))
    products_with_prices = zip(products, predicted_prices)
    return render(request, 'index1.html', {'products_with_prices': products_with_prices})


def index(request):
    
    top_five_products = Product.objects.all()[:10]
    categories = Category.objects.all()[:6]
    important_products = BookPreference.objects.filter(customer=request.user, preference='important').values_list('product', flat=True)
    important_products = Product.objects.filter(id__in=important_products)
    return render(request, 'bookshop/index.html', {'categories': categories, 'important_products': important_products, 'top_five_products': top_five_products})


def set_book_preference(request):
    if request.method == 'POST':
        customer = request.user  # Use the User object directly as the customer
        product_id = request.POST['product_id']
        preference = request.POST['preference']

        product = Product.objects.get(id=product_id)

        book_preference, created = BookPreference.objects.get_or_create(
            customer=customer, product=product
        )
        book_preference.preference = preference
        book_preference.save()

        return redirect('product_list')
    else:
        return HttpResponseNotAllowed(['POST'])

    #total products display function


from django.db.models import Q

def product_list(request, category_slug=None):
    category = None
    categories = Category.objects.all()
    products = Product.objects.all()

    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        products = products.filter(category=category)

    # Get the user's preferences for products
    user_preferences = {}
    if request.user.is_authenticated:
        user_preferences = {bp.product_id: bp.preference for bp in BookPreference.objects.filter(customer=request.user)}

    # Filter out products based on user preferences
    products = [product for product in products if user_preferences.get(product.id) != 'exclude']

    return render(request, 'bookshop/products_list.html', {'category': category, 'categories': categories, 'products': products})



    #single product vi

def product_detail(request, slug):
    product = get_object_or_404(Product,slug=slug,available=True)
    cart_product_form = CartAddProductForm()
    
    #getting product id for showing all review realted to one product
    reviewproduct = Product.objects.filter(slug=slug)
    prid = None
    for product_id in reviewproduct:
        prid = product_id.id

    all_reviews = Review.objects.filter(product=prid)
    book = get_object_or_404(Product, slug=slug)
    
    
    
    
    # تطبيق خوارزمية cluster
    
    format_mapping = {'ورقي': 0, 'الكتروني': 1}
    language_mapping = {'عربي': 0, 'انكليزي': 1}
    target_audience_mapping = {'مبرمجين': 0, 'عامة الناس': 1, 'اقتصاديين': 2, 'أطفال': 3}

    product_specs = [
        format_mapping.get(product.Format, -1),
        language_mapping.get(product.Language, -1),
        target_audience_mapping.get(product.Target_audience, -1),
        product.Page_Count,
        product.Edition,
        product.Series,
        product.price
    ]
   
   
    
    clustered_books = []
    
    if product_specs != [-1, -1, -1, -1, -1, -1, -1]:
        all_products = Product.objects.filter(available=True)

        product_ids = []
        product_specs_list = []
        for prod in all_products:
            format_value = format_mapping.get(prod.Format, -1)
            language_value = language_mapping.get(prod.Language, -1)
            target_audience_value = target_audience_mapping.get(prod.Target_audience, -1)
            product_specs_list.append([format_value, language_value, target_audience_value, prod.Page_Count, prod.Edition, prod.Series, prod.price])
            product_ids.append(prod.id)

        kmeans = KMeans(n_clusters=4, random_state=0)
        clusters = kmeans.fit_predict(product_specs_list)

        cluster_id = clusters[product_ids.index(product.id)]

        clustered_books = Product.objects.filter(id__in=[product_id for idx, product_id in enumerate(product_ids) if clusters[idx] == cluster_id])
        
        
        orders = Order1.objects.all()
    order_data = []
    for order in orders:
        order_items = OrderItem1.objects.filter(order=order)
        order_data.append([item.product.id for item in order_items])

   
    te = TransactionEncoder()
    te_ary = te.fit(order_data).transform(order_data)
    df = pd.DataFrame(te_ary, columns=te.columns_)

    # تطبيق خوارزمية Apriori
    frequent_itemsets = apriori(df, min_support = 000.1, use_colnames=True)
    rules = association_rules(frequent_itemsets, metric="lift", min_threshold=1)

    
    related_books_ids = set()
    
    for _, rule in rules.iterrows():
        if book.id in rule['antecedents']:
            related_books_ids.update(rule['consequents'])
        elif book.id in rule['consequents']:
            related_books_ids.update(rule['antecedents'])

    related_books = Product.objects.filter(id__in=related_books_ids)
        
    return render(request, 'bookshop/product_detail.html', {'product': product, 'cart_product_form': cart_product_form, 'all_reviews': all_reviews, 'book': book, 'related_books':related_books , 'clustered_books': clustered_books})
def all_Categories(request):
    categories = Category.objects.all()
    return render(request,'bookshop/all_category_list.html',{'categories':categories})



def contact_us(request):
    return render(request,'bookshop/contact_us.html')


def search_Result(request):
    if request.method== 'POST':
        searh_query = request.POST['search']
        query_result = Product.objects.filter(name__startswith=searh_query)
        return render(request,'bookshop/search.html',{'query_result':query_result,'searh_query':searh_query})


#review 
def Comment_Review(request,product_id):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        rating = request.POST['rating']
        review_comment = request.POST['review']
        product = get_object_or_404(Product,id=product_id)
        comment_review = Review.objects.create(product=product,name=name,email=email,rating=rating,review_comment=review_comment)
        message = messages.success(request,"Your reviews is submitted")
        
        return render(request,'bookshop/product_detail.html')
    
    return render(request,'bookshop/product_detail.html')


def deleted_products_list(request):
    if not request.user.is_authenticated:
        # إذا لم يكن المستخدم مسجل الدخول، قم بتوجيهه إلى صفحة تسجيل الدخول
        return redirect('login')

    # Get the user's preferences for products
    user_preferences = {bp.product_id for bp in BookPreference.objects.filter(customer=request.user, preference='exclude')}

    # Get the deleted products based on user preferences
    deleted_products = Product.objects.filter(id__in=user_preferences)

    return render(request, 'bookshop/deleted_products_list.html', {'deleted_products': deleted_products})





def cluster_products(request):
    # استعلام للحصول على جميع المنتجات المتاحة
    products = Product.objects.filter(available=True)

    # تحويل المواصفات النصية إلى قيم رقمية
    format_mapping = {'ورقي': 0, 'الكتروني': 1}
    language_mapping = {'عربي': 0, 'انكليزي': 1}
    target_audience_mapping = {'مبرمجين': 0, 'عامة الناس': 1, 'اقتصاديين': 2, 'أطفال': 3}

    product_specs = []
    for product in products:
        format_value = format_mapping.get(product.Format, -1)
        language_value = language_mapping.get(product.Language, -1)
        target_audience_value = target_audience_mapping.get(product.Target_audience, -1)
        product_specs.append([format_value, language_value, target_audience_value, product.Page_Count, product.Edition, product.Series, product.price])

    # تطبيق خوارزمية التجميع
    kmeans = KMeans(n_clusters=4, random_state=0)
    clusters = kmeans.fit_predict(product_specs)

    # تحديد المنتجات لكل مجموعة
    clustered_products = [[] for _ in range(4)]
    for i, product in enumerate(products):
        clustered_products[clusters[i]].append(product)

    context = {
        'clustered_products': clustered_products
    }

    return render(request, 'bookshop/clustered_products.html', context)
