touch .env
# Copy and Paste data to .env manualy
nano .env

docker-compose up --build 
# Check and Ctrl + C

# Than:
docker-compose up --build -d

# For update pip
docker-compose exec web  pip install --upgrade pip

# For connect allauth package
docker-compose exec web python manage.py migrate

# For create super user
docker-compose exec web python manage.py createsuperuser

