nano .env
# COPY/PASTE data

# in First SSH Terminal:
docker-compose up --build

# in Second SSH Terminal
docker-compose exec web python manage.py migrate


