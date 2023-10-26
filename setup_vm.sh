sudo apt update
sudo apt upgrade
sudo add-apt-repository ppa:gns3/ppa
sudo apt update   
sudo apt install -y gns3-gui gns3-server
sudo docker ps
sudo apt remove docker docker-engine docker.io
sudo snap remove docker
sudo apt-get install -y apt-transport-https ca-certificates curl \ software-properties-common
udo apt-get install -y apt-transport-https ca-certificates curl  software-properties-common
url -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo apt install python3-pip
pip install docker