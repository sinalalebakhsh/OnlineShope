touch .env
# Copy and Paste data to .env manualy


# docker-compose up --build 
# Check and Ctrl + C

# Than:
# docker-compose up --build -d
docker-compose exec web  pip install --upgrade pip
docker-compose exec web python manage.py migrate