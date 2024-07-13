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













