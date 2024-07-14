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


apt install python3-pip
pip install --upgrade pip
pip --version
# Output:
    pip 22.0.2 from /usr/lib/python3/dist-packages/pip (python 3.10)
    