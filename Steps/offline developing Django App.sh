# Delere requirements.txt file
rm requirements.txt

# Create pipenv
pipenv install

# Install Django
pipenv install django

# Create Dockerfile
touch Dockerfile

# Add these into Dockerfile
echo -e "# Use Python 3.10 image\nFROM python:3.10\n\n# Set environment variables\nENV PYTHONDONTWRITEBYTECODE 1\nENV PYTHONUNBUFFERED 1\n\n# Set the working directory to /code\nWORKDIR /code\n\n# Copy the requirements.txt file into the container at /code\nCOPY requirements.txt /code/\n\n# Install any dependencies specified in requirements.txt\nRUN pip install -r requirements.txt\n\n# Copy all files in the current directory to /code\nCOPY . /code/" > Dockerfile

# Active pipenv
# Ctrl + P 
# >python interpreter
# Select this
# Python 3.10.12('onlineShope-SflkjsdfSDF':Pipenv) ~/.local/virtualenvs/onlineShope/...
# If don't shows to you Close VS Code and Open again these steps.

# Exit from last Terminal
exit

# Open again Terminal
# Ctrl + ~
# Output:
    # onlineShopesina@linux:~/01-Repo/onlineShope$

# Check this
pipenv requirements
# Output
    # -i https://pypi.org/simple
    # asgiref==3.8.1; python_version >= '3.8'
    # django==5.0.7; python_version >= '3.10'
    # sqlparse==0.5.0; python_version >= '3.8'
    # typing-extensions==4.12.2; python_version < '3.11'

# Add this into requirements.txt
pipenv requirements > requirements.txt

# If you want to always create a new virtual environment regardless of an existing one, 
# you can set the PIPENV_IGNORE_VIRTUALENVS environment variable:
export PIPENV_IGNORE_VIRTUALENVS=1



# If you prefer to suppress the warning messages, you can set the PIPENV_VERBOSITY environment variable:
export PIPENV_VERBOSITY=-1

# Add these in docker-compose.yml
echo -e "version: '3.9'\n\nservices:\n  web:\n    build: .\n    command: python /code/manage.py runserver 0.0.0.0:8000\n    volumes:\n      - .:/code\n    ports:\n      - 8000:8000\n\n  db:\n    image: postgres:14\n    environment:\n      - \"POSTGRES_HOST_AUTH_METHOD=trust\"" > docker-compose.yml


# install Djangoproject
django-admin startproject config .

# Create .dockerignore
touch .dockerignore

# Add this in .dockerignore
echo "/Steps" >> .dockerignore

# Add this in config/setting.py ->  # ALLOWED_HOSTS = ['0.0.0.0']



# Create and add this
echo .env >> .gitignore
echo db.sqlite3 >> .gitignore 
touch .env

# Add inside .env
DJANGO_SECRET_KEY='django-insecure-kljasdlkjasdlkjasdlkjasldkjasdlk'
DJANGO_DEBUG=False  # ANYTHING You want ...


# Install
pipenv install environs
pipenv requirements > requirements.txt


# Add this in config/setting.py
from environs import Env
# get .env if exists (for environments variables)
env = Env()
env.read_env()
SECRET_KEY = env.str("DJANGO_SECRET_KEY") # Instead of your actual secret key
DEBUG = env.bool("DJANGO_DEBUG")


# Build Docker Image and compose to container
docker-compose up --build
# Output:
    # Building web
    # [+] Building 18.0s (10/10) FINISHED                                                                                                           docker:rootless
    #  => [internal] load .dockerignore                                                                                                                        0.0s
    #  => => transferring context: 47B                                                                                                                         0.0s
    #  => [internal] load build definition from Dockerfile                                                                                                     0.1s
    #  => => transferring dockerfile: 465B                                                                                                                     0.0s
    #  => [internal] load metadata for docker.io/library/python:3.10                                                                                           0.0s
    #  => [internal] load build context                                                                                                                        0.1s
    #  => => transferring context: 42.01kB                                                                                                                     0.0s
    #  => [1/5] FROM docker.io/library/python:3.10                                                                                                             0.0s
    #  => CACHED [2/5] WORKDIR /code                                                                                                                           0.0s
    #  => [3/5] COPY requirements.txt /code/                                                                                                                   0.1s
    #  => [4/5] RUN pip install -r requirements.txt                                                                                                           15.8s
    #  => [5/5] COPY . /code/                                                                                                                                  0.4s 
    #  => exporting to image                                                                                                                                   1.6s 
    #  => => exporting layers                                                                                                                                  1.5s 
    #  => => writing image sha256:18ae90f207d417d12352cf93182c0442f0ae476886de686b8c596d2fb5b985f9                                                             0.0s 
    #  => => naming to docker.io/library/onlineshope_web                                                                                                       0.0s 
    # Creating onlineshope_web_1 ... done
    # Creating onlineshope_db_1  ... done
    # Attaching to onlineshope_db_1, onlineshope_web_1
    # db_1   | ********************************************************************************
    # db_1   | WARNING: POSTGRES_HOST_AUTH_METHOD has been set to "trust". This will allow
    # db_1   |          anyone with access to the Postgres port to access your database without
    # db_1   |          a password, even if POSTGRES_PASSWORD is set. See PostgreSQL
    # db_1   |          documentation about "trust":
    # db_1   |          https://www.postgresql.org/docs/current/auth-trust.html
    # db_1   |          In Docker's default configuration, this is effectively any other
    # db_1   |          container on the same system.
    # db_1   | 
    # db_1   |          It is not recommended to use POSTGRES_HOST_AUTH_METHOD=trust. Replace
    # db_1   |          it with "-e POSTGRES_PASSWORD=password" instead to set a password in
    # db_1   |          "docker run".
    # db_1   | ********************************************************************************
    # db_1   | The files belonging to this database system will be owned by user "postgres".
    # db_1   | This user must also own the server process.
    # db_1   | 
    # db_1   | The database cluster will be initialized with locale "en_US.utf8".
    # db_1   | The default database encoding has accordingly been set to "UTF8".
    # db_1   | The default text search configuration will be set to "english".
    # db_1   | 
    # db_1   | Data page checksums are disabled.
    # db_1   | 
    # db_1   | fixing permissions on existing directory /var/lib/postgresql/data ... ok
    # db_1   | creating subdirectories ... ok
    # db_1   | selecting dynamic shared memory implementation ... posix
    # db_1   | selecting default max_connections ... 100
    # db_1   | selecting default shared_buffers ... 128MB
    # db_1   | selecting default time zone ... Etc/UTC
    # db_1   | creating configuration files ... ok
    # db_1   | running bootstrap script ... ok
    # db_1   | performing post-bootstrap initialization ... ok
    # web_1  | Watching for file changes with StatReloader
    # web_1  | Performing system checks...
    # web_1  | 
    # web_1  | System check identified no issues (0 silenced).
    # web_1  | 
    # web_1  | You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
    # web_1  | Run 'python manage.py migrate' to apply them.
    # web_1  | July 10, 2024 - 21:43:42
    # web_1  | Django version 5.0.7, using settings 'config.settings'
    # web_1  | Starting development server at http://0.0.0.0:8000/
    # web_1  | Quit the server with CONTROL-C.
# 
# Check this link
# http://0.0.0.0:8000/


docker-compose exec web python manage.py startapp accounts


# Add in config/setting.py -> in INSTALLED_APPS = [ here ]
'accounts',


# Add this
echo from django.contrib.auth.models import AbstractUser >> accounts/models.py


# Add this
class CustomUser(AbstractUser):
    pass


# Create
touch accounts/forms.py

# Add in accounts/forms.py
from django.contrib.auth.forms import UserCreationForm, UserChangeForm 
from django.contrib.auth import get_user_model
class CustomUserCreationForm(UserCreationForm):
    class Meta:
        model = get_user_model()
        fields = ('email', 'username')
class CustomUserChangeForm(UserChangeForm):
    class Meta:
        model = get_user_model()
        fields = ('email', 'username')

# Add config/setting.py
# accounts config
AUTH_USER_MODEL = 'accounts.CustomUser'

# Add in accounts/admin.py
from django.contrib.auth.admin import UserAdmin
from .models import CustomUser
from .forms import CustomUserCreationForm,CustomUserChangeForm
@admin.register(CustomUser)
class CustomUserAdmin(UserAdmin):
    model = CustomUser
    add_form = CustomUserCreationForm
    form = CustomUserChangeForm
    list_display = ('email', 'username')


# Change this line in Docker-compose.yml
command: sh -c "python manage.py makemigrations && python manage.py migrate && python /code/manage.py runserver 0.0.0.0:8000"

# Create Super user
docker-compose exec web python manage.py createsuperuser

git rm db.sqlite3 --cached

docker-compose exec web python manage.py startapp pages

# Add in config/settings.py 
INSTALLED_APPS = [ ... 
'pages',
]


# Add in pages/views.py
from django.views.generic import TemplateView
class HomePageView(TemplateView):
    template_name = 'home.html'
class AboutUsPageView(TemplateView):
    template_name = 'pages/aboutus.html'
    

# Create in current directory project
templates/home.html

# Add in config/settings.py
TEMPLATES = [
    {
        ...
        'DIRS': [str(BASE_DIR.joinpath('templates'))],
        ...
    }
]

# Create in pages
templates/pages/aboutus.html


# Add in config/urls.py
from django.urls import path, include
urlpatterns = [
    ...
    path('', include('pages.urls')),
]

# Create in pages
urls.py

# Add in pages/urls.py
from django.urls import path
from . import views
urlpatterns = [
    path('', views.HomePageView.as_view(), name='home'),
    path('', views.AboutUsPageView.as_view(), name='aboutus'),
]

# TEST WebApp
http://0.0.0.0:8000/aboutus
http://0.0.0.0:8000/
http://0.0.0.0:8000/home


# Add in config/urls.py
urlpatterns = [
    ...
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/', include('accounts.urls')),
]

# CREATE in accounts/
urls.py

# Add in accounts/urls.py
from django.urls import path
from . import views
urlpatterns = [
    path('signup/', views.SignUpView.as_view(), name='signup')
]

# Add in accounts/views.py
from django.views.generic import CreateView
from django.urls import reverse_lazy
from .forms import CustomUserCreationForm
class SignUpView(CreateView):
    form_class = CustomUserCreationForm
    template_name = 'registration/signup.html'
    success_url = reverse_lazy('login')


# CREate in templates
registration/signup.html
registration/login.html


# Add in templates/login/signup.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<body>
    <form action="" method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <input type="submit" value="Login">
    </form>
</body>
</html>

# Add in templates/registration/signup.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<body>
    <form action="" method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <input type="submit" value="Signup">

        
    </form>
</body>
</html>


# Install crispy-forms
pipenv install django-crispy-forms
pipenv install crispy-bootstrap4
pipenv requirements > requirements.txt
docker-compose up --build

# add in config/settings.py
INSTALLED_APPS = [
    ...
    'crispy_forms',
    'crispy_bootstrap4',
    ...

]

# CREATE in templates/
_base.html

# Add in templates/_base.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>
        {% block page_title %}{% endblock %}
    </title>
</head>
<body>
    {% block content %}{% endblock %}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>


# Change templates/home.html
{% extends '_base.html' %}
{% block page_title %}
    HOME
{% endblock %}
{% block content %}
    <h1>Home</h1>
{% endblock %}



# Change templates/registration/signup.html
{% extends '_base.html' %}
{% block page_title %}
    Signup
{% endblock %}
{% block content %}
    <h1>Signup</h1>
    <form action="" method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <input type="submit" value="Signup">
    </form>
{% endblock %}



# Change templates/registration/login.html
{% extends '_base.html' %}
{% block page_title %}
    Login
{% endblock %}
{% block content %}
    <h1>Login</h1>
    <form action="" method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <input type="submit" value="Login">
    </form>
{% endblock %}


# Add in config/settings.py
CRISPY_TEMPLATE_PACK = 'bootstrap'


# Add templates/registration/signup.html
...
{% load crispy_forms_tags %}
...


# Add templates/registration/login.html
...
{% load crispy_forms_tags %}
...

# Changes templates/registration/signup.html
...
        {{ form|crispy }}
...




# Changes templates/registration/login.html
...
        {{ form|crispy }}
...


# Test App link
http://0.0.0.0:8000/accounts/signup/
http://0.0.0.0:8000/accounts/login/



# go here for allauth
# https://docs.allauth.org/en/latest/installation/quickstart.html?

pipenv install django-allauth
pipenv requirements > requirements.txt



# Add in config/settings.py
INSTALLED_APPS = [
    ...
    'allauth',
    'allauth.account',
    ...
]
MIDDLEWARE = [
    ...
    # Add the account middleware:
    "allauth.account.middleware.AccountMiddleware",
]
# For allauth Package                          --------------->>>> SINA 
AUTHENTICATION_BACKENDS = [
    # Needed to login by username in Django admin, regardless of `allauth`
    'django.contrib.auth.backends.ModelBackend',

    # `allauth` specific authentication methods, such as login by email
    'allauth.account.auth_backends.AuthenticationBackend',
]
SITE_ID = 1
EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'





# Change config/urls.py
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('pages.urls')),
    path('home/', include('pages.urls')),
    path('accounts/', include('allauth.urls')),
]




# RENAME templates/registration directory to
account




# DELETE this file from accounts/urls.py
accounts/urls.py


# Add in config.settings.py
ACCOUNT_SESSION_REMEMBER = True
ACCOUNT_SIGNUP_PASSWORD_ENTER_TWICE = False
ACCOUNT_USERNAME_REQUIRED = False
ACCOUNT_AUTHENTICATION_METHOD = 'email'
ACCOUNT_EMAIL_REQUIRED = True
ACCOUNT_UNIQUE_EMAIL = True



# CREATE in templates/account
logout.html
# content logout.html
{% extends '_base.html' %}
{% load crispy_forms_tags %}
{% block page_title %}
    Logout
{% endblock %}
{% block content %}
    <div>
        <h1>Logout</h1>
        <br>
        <h4>Do You want to logout?</h4>
        <br>
        <form action="" method="POST">
            {% csrf_token %}
            {{ form|crispy }}
            <input type="submit" value="Logout">
        </form>
    </div>
{% endblock %}


# migrate
docker-compose exec web python manage.py migrate
# Output:
    Operations to perform:
      Apply all migrations: account, accounts, admin, auth, contenttypes, sessions
    Running migrations:
      No migrations to apply.




# Install
pipenv install django-environ
pipenv requirements > requirements.txt 


# Add in docker-compose.yml
    depends_on:
      - db
    
# Change config/settings.py
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': '5432',
    }
}

# Install
pipenv install psycopg2-binary
pipenv requirements > requirements.txt

docker pull dpage/pgadmin4


# Add in docker-compose.yml
# version: '3.9'
# services:
#   web:
#     build: .
#     command: sh -c "pip --version && pip install --upgrade pip && python manage.py makemigrations && python manage.py migrate && python /code/manage.py runserver 0.0.0.0:8000"
#     volumes:
#       - .:/code
#     ports:
#       - 8000:8000
#     depends_on:
#       - db
  pgadmin:
    image: dpage/pgadmin4
    environment:
      PGADMIN_DEFAULT_EMAIL: admin@example.com
      PGADMIN_DEFAULT_PASSWORD: admin
    ports:
      - "8080:80"
    depends_on:
      - db
#   db:
#     image: postgres:14
#     environment:
#       - "POSTGRES_HOST_AUTH_METHOD=trust"
    ports:
      - "5432:5432"



# Change this in docker-compose.yml
#   pgadmin:
#     image: dpage/pgadmin4
#     environment:
        PGADMIN_DEFAULT_EMAIL: ${PGADMIN_DEFAULT_EMAIL}
        PGADMIN_DEFAULT_PASSWORD: ${PGADMIN_DEFAULT_PASSWORD}

# Add in .env
# pgAdmin settings
PGADMIN_DEFAULT_EMAIL=XXX@XXX.com
PGADMIN_DEFAULT_PASSWORD=XXXXXXXXXXXXXXXXXXXX

   

docker-compose exec web python manage.py startapp products

# add in config/settings.py -> INSTALLED_APPS [...]
'products.apps.ProductsConfig',

# Add in products/models.py
class Product(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    price = models.PositiveIntegerField(default=0) # for Dollar use models.DecimalFields
    active = models.BooleanField(default=True)
    # cover = 
    datetime_created = models.DateTimeField(auto_now_add=True)
    dateTime_modified = models.DateTimeField(auto_now=True)


docker-compose exec web python manage.py makemigrations products
docker-compose exec web python manage.py migrate


# add in products/views.py
from django.views import generic
from .models import Product
class ProductsListView(generic.ListView):
    model = Product
    template_name = 'products/products_list.html'
    context_object_name = 'products'


# CREATE in products directory
templates/products/products_list.html
# Content of templates/products/products_list.html
{% extends '_base.html' %}
{% block page_title %}
    Products
{% endblock %}
{% block content %}
    <H1>Product List</H1>
{% endblock %}




# CREATE in products
urls.py
# Content of products/urls.py
from django.urls import path
from .views import ProductsListView
urlpatterns = [
    path('', ProductsListView.as_view(), name='product_list'),
]



# Add in config/urls.py
from django.urls import path
from .views import ProductsListView
urlpatterns = [
    path('', ProductsListView.as_view(), name='product_list'),
]


# Add in products/templates/products/products_list.html
{% block content %}
    <H1>Product List</H1>

    {% for product in products %}
        {{ product.title }}
    {% endfor %}

# Add in products/admin.py
from django.contrib import admin
from .models import Product
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    pass


# CREATE SuperUser again if delete last dockerfile
docker-compose exec web python manage.py createsuperuser
# Check this link
http://0.0.0.0:8000/admin/products/product/
#  Create 3 Products for Test


# add in products/models -> class Product
    def __str__(self):
        return self.title
# Check this link
http://0.0.0.0:8000/admin/products/product/
    
    
# Change in products/admin.py -> class ProductAdmin
class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'price', 'active', ]
# Check this link
http://0.0.0.0:8000/admin/products/product/



# Change products/views.py
class ProductsListView(generic.ListView):
    # model = Product
    queryset = Product.objects.filter(active=True)
# Test anactive product
http://0.0.0.0:8000/admin/products/product/
# Check this link
http://0.0.0.0:8000/products/



# Add in products/views.py
class ProductDetailView(generic.DetailView):
    model = Product
    template_name = 'products/product_detail.html'
    context_object_name = 'prodduct'


# CREATE in products/templates/products/product_detail.html
product_detail.html
# content of product_detail.html
{% extends '_base.html' %}
{% block page_title %}
    Product Detail
{% endblock %}
{% block content %}
    <h1>{{ product.title }}</h1>
    <p>{{ product.description}}</p>
{% endblock %}



# Change in product_list.html
{% for product in products %}
    <a href="{{ product.get_absolute_url }}">
        <h1>{{ product.title }}</h1>
    </a>
{% endfor %}



# add in products/urls.py
from .views import ProductDetailView
urlpatterns = [
    ...
    path('<int:pk>/', ProductDetailView.as_view(), name='product_detail'),
# Check this link and tag link products
http://0.0.0.0:8000/products/
http://0.0.0.0:8000/products/1/
http://0.0.0.0:8000/products/2/
http://0.0.0.0:8000/products/3/
http://0.0.0.0:8000/products/.../ # should have arise an error because don't have 





# Add in products/urls.py
from django.shortcuts import reverse
class Product(models.Model):
    ...
    def get_absolute_url(self):
        return reverse('product_detail', args=[self.pk])



# Add in config/settings.py
import os
# under STATIC_URL = 'static/'
STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static'), ]


# CREATE static directory in current directory project
static
# Create in statice directory css directory
css
# Add in static/css/ all css files
_base.css
main.css
vendor.vss


# add in _base.html
{% load static %}
<head>
    ...
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="assets/img/icon.png">
    <!-- ************************* CSS Files ************************* -->
    <link rel="stylesheet" href="{% static 'assets/css/_base.css' %}">
    <!-- Vendor CSS -->
    <link rel="stylesheet" href="{% static 'assets/css/vendor.css' %}">
    <!-- style css -->
    <link rel="stylesheet" href="{% static 'css/main.css' %}">
</head>

# Rebuild docker
docker-compose down
docker-compose up --build



# Add in products/models.py
from django.contrib.auth import get_user_model
# ...
class Comment(models.Model):
    PRODUCT_STARS = [
        ('1', 'Very Bad'),
        ('2', 'Bad'),
        ('3', 'Normal'),
        ('4', 'Good'),
        ('5', 'Perfect'),
    ]
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='comments', )
    author = models.ForeignKey(get_user_model(), on_delete=models.CASCADE, related_name='comments',)
    body = models.TextField()
    stars = models.CharField(max_length=10, choices=PRODUCT_STARS)

    datetime_created = models.DateTimeField(auto_now_add=True)
    dateTime_modified = models.DateTimeField(auto_now=True)

    active = models.BooleanField(default=True)




# Rebuild docker
docker-compose down
docker-compose up --build


# Add in products/admin.py
from .models import Comment

@admin.register(Comment)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['product', 'author', 'body', 'stars', 'active']


# Rebuild docker
docker-compose down
docker-compose up --build
# Run this file in Steps
# 01-Second Steps for another
# Check
http://0.0.0.0:8000/admin/products/comment/



# CREATE in products directory
forms.py
# content of products/forms.py
from django import forms
from .models import Comment
class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['body', 'stars', ]

# Add in products/views.py -> class ProductDetailView
from .forms import CommentForm
class ProductDetailView(generic.DetailView):
    ...
    ...
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['comment_form'] = CommentForm()
        return context



# Add in product_detail.html
{% load crispy_forms_tags %}
<form action="" method="POST">
    {% csrf_token %}
    {{ comment_form|crispy }}
    <input type="submit" value="ارسال">
</form>
# Check this link for comment posting
http://0.0.0.0:8000/products/1/



# Add in products/urls.py
from .views import CommentCreateView
urlpatterns = [
    ...
    ...
    path('comment/<int:product_id>/',CommentCreateView.as_view(), name='comment_create'),
]


# Add in products/views.py
from django.shortcuts import get_object_or_404

from .models import Comment

class CommentCreateView(generic.CreateView):
    model = Comment
    form_class = CommentForm

    def form_valid(self, form):
        obj = form.save(commit=False)
        obj.author = self.request.user

        product_id = int(self.kwargs['product_id'])
        product = get_object_or_404(Product, id=product_id)
        obj.product = product

        return super().form_valid(form)



# Add in product_detail.html
<span class="reply-title pull-right">نظر خود را بنویسید</span>
<br>
<form action="{% url 'comment_create' product.id %}" method="POST">



# Add in products/models.py -> class Comment
class Comment(models.Model):
    ...
    ...
    def get_absolute_url(self):
        return reverse('product_detail', args=[self.product.id])





# Add in products/models.py -> class Comment
class ActiveCommentsManager():
    def get_queryset(self):
        return super(ActiveCommentsManager, self).get_queryset().filter(active=True)


class Comment(models.Model):
    ...
    ...
    # Manager
    objects = models.Manager()
    active_comments_manager = ActiveCommentsManager()

    # def get_absolute_url(self):
    #     return reverse('product_detail', args=[self.product.id])







# CREATE this in products directory
templatetags/__init__.py

# CREATE in products/templatestags/
comment_tags.py

# Content in products/templatestags/comment_tags.py
from django import template
register = template.Library()
@register.filter
def only_active_comments(comments):
    return comments.filter(active=True)




# Add in product_detail.html
{% load comment_tags %}
...
...
...
# Change this line
{% for comment in product.comments.all|only_active_comments %}
...
...
...




# Add in products/admin.py
class CommentsInline(admin.TabularInline):
    model = Comment
    fields = ['author', 'body', 'stars', 'active']

class ProductAdmin(admin.ModelAdmin):
    ...
    inlines = [
        CommentsInline,
    ]
# Check this link
http://0.0.0.0:8000/admin/products/product/1/change/





# Change in config/settings.py
# LANGUAGE_CODE = "en-us"
LANGUAGE_CODE = "fa"
# TIME_ZONE = "UTC"
TIME_ZONE = "Asia/Tehran"
...
USE_L10N = True # Localization
...




# Add in product_detail.html
{% load i18n %}
# Cahnge in product_detail.html
...
{% trans 'Add to Cart' %}
...
<span>{% translate 'Product Description' %}</span>
...
<span class="reply-title pull-right">{% translate 'Write your comment' %}</span>
...
<input type="submit" value="{% trans 'Submit' %}">
...


# Write In Terminal
cd products/
mkdir locale
django-admin makemessages -l fa


# in products/locale/fa/LC_MESSAGES
# translate things
msgid "Add to Cart"
msgstr "اضافه به سبد خرید"
#: templates/products/product_detail.html:83
msgid "Product Description"
msgstr "اطلاعات محصول"
#: templates/products/product_detail.html:171
msgid "Write your comment"
msgstr "نظر خود را بنویسید"
#: templates/products/product_detail.html:176
msgid "Submit"
msgstr "ارسال"



# In Terminal in products directory
django-admin compilemessages


# Change in products/models.py
from django.utils.translation import gettext_lazy as _
...
...
class Comment(models.Model):
    ...
    ...
    body = models.TextField(verbose_name=_("text"))
    stars = models.CharField(max_length=10, choices=PRODUCT_STARS, verbose_name=_("score"))


cd products/
django-admin makemessages -l fa

# Translate in po file in products/locale/fa/LC_MESSAGES
#: models.py:49
msgid "text"
msgstr "متن دیدگاه"
#: models.py:50
msgid "score"
msgstr "امتیاز"


django-admin compilemessages
# Check this link
http://0.0.0.0:8000/products/1/




pipenv install django-rosetta


pipenv requirements > requi




