touch .env

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



docker-compose up --build -d
# upgrade
docker-compose exec web  pip install --upgrade pip
# migrate
docker-compose exec web python manage.py migrate

