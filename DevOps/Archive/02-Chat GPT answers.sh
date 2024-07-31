


# To set up SSL for your Nginx web server in a Docker environment, you can use Let's Encrypt for free SSL certificates and automate the process with Certbot. Here are the steps to achieve this:
#     Update your docker-compose.yml:
#     Add a new service for Certbot and update your Nginx service to include SSL configurations.
version: '3.8'

services:
  db:
    image: postgres:13
    environment:
      POSTGRES_DB: ${POSTGRES_DB}
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
    volumes:
      - postgres_data:/var/lib/postgresql/data

  web:
    build: .
    command: gunicorn config.wsgi:application --bind 0.0.0.0:8000
    volumes:
      - .:/app
    expose:
      - "8000"
    env_file:
      - .env
    depends_on:
      - db

  nginx:
    image: nginx:latest
    volumes:
      - ./nginx:/etc/nginx/conf.d
      - ./certbot/conf:/etc/letsencrypt
      - ./certbot/www:/var/www/certbot
    ports:
      - "80:80"
      - "443:443"
    depends_on:
      - web

  certbot:
    image: certbot/certbot
    volumes:
      - ./certbot/conf:/etc/letsencrypt
      - ./certbot/www:/var/www/certbot
    entrypoint: "/bin/sh -c 'trap exit TERM; while :; do sleep 12h & wait $${!}; certbot renew; done'"

volumes:
  postgres_data:




# Create Nginx Configuration:
# Create a new Nginx configuration file (nginx/default.conf) with SSL settings.
mkdir nginx
cd nginx/
nano default.conf

# Content of default.conf
server {
    listen 80;
    server_name acronproject.com;

    location / {
        proxy_pass http://web:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }
}

server {
    listen 443 ssl;
    server_name acronproject.com;

    ssl_certificate /etc/letsencrypt/live/acronproject.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/acronproject.com/privkey.pem;

    location / {
        proxy_pass http://web:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}




# in First SSH Terminal:
docker-compose up --build

# in Second SSH Terminal
docker-compose exec web python manage.py migrate

# Obtain SSL Certificates:
# Run the Certbot container to obtain the initial SSL certificates.
docker-compose run --rm certbot certonly --webroot --webroot-path=/var/www/certbot --email lalebakhshsina@gmail.com --agree-tos --no-eff-email -d acronproject.com
