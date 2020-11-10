#
# Arquivo com os programas padrão para instalar após a formatação do computador
#

# removendo versões antigas do docker
sudo apt remove docker docker-engine docker.io containerd runc


sudo apt install \
    build-essentials \
    vlc \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# instalando as chaves de criptografia do docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker iago
sudo snap install code goland