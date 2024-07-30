# Copy and Paste data to .env manualy
nano .env
# Copy and Paste in .env
DJANGO_SECRET_KEY='XXXXXXXXXXXXXXXXXx'
DJANGO_DEBUG=False
# OR
DJANGO_DEBUG=True


apt install python3-pip
pip install --upgrade pip

nano config/settings.py
ALLOWED_HOSTS = ['154.16.16.239']



docker-compose up --build
# IF don't any error
# Ctrl + C and than again with detach
docker-compose up --build -d


# upgrade
# migrate
# CREATE super user
docker-compose exec web  pip install --upgrade pip
docker-compose exec web python manage.py makemigrations
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py migrate --fake sessions zero
docker-compose exec web python manage.py migrate --fake-initial
docker-compose exec web python manage.py createsuperuser

