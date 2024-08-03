## Set up your VPS: 
sudo apt update && sudo apt upgrade

# IF connection lost:
    # sudo dpkg --configure -a

    

## Docker:
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker


## Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


docker pull python:3.10
docker pull postgres:14
docker pull nginx:latest
docker pull dpage/pgadmin4
docker pull python:3.9-slim
docker pull nginx:alpine

# Optional:
docker pull python:3.8-slim
# ==========================


apt install python3-pip
pip install --upgrade pip
pip --version
# Output:
    pip 22.0.2 from /usr/lib/python3/dist-packages/pip (python 3.10)


nano config/settings.py

ALLOWED_HOSTS = ['154.16.16.239']


docker-compose up --build -d
# upgrade
docker-compose exec web  pip install --upgrade pip
# migrate
docker-compose exec web python manage.py migrate

