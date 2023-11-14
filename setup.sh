#########################################
# Initial setup for new Debian OS.
#
# Installs my commonly used packages.
#
# Usage:
#   $ chmod +x setup.sh
#   $ ./setup.sh
#########################################

# Check for initial updates
sudo apt update && sudo apt -y upgrade

# Languages
sudo apt -y install php8.2
sudo apt -y install postgresql
sudo apt -y install php-pgsql
sudo apt -y install default-jdk
sudo apt -y install nodejs

# Miniconda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
# If export to bashrc fails just copy and paste into bashrc manually.
#   export PATH="$PATH:$HOME/miniconda3/bin"
echo "export PATH=$PATH:$HOME/miniconda3/bin" >> ~/.bashrc
source ~/.bashrc

# Jupyter
sudo apt -y install python3 python3-dev python3-venv python3-pip
python3 -m venv myenv
source myenv/bin/activate
pip install --upgrade pip
pip install jupyter

# Terminal tools
sudo apt -y install screenfetch
sudo apt -y install redshift
sudo apt -y install speedtest-cli
sudo apt -y install htop
sudo apt -y install wget
sudo apt -y install snapd
sudo apt -y install python3-pip
sudo apt -y install vlc
sudo apt -y install xclip
sudo apt -y install mcrypt

# Random goodies
sudo apt -y install sl
sudo apt -y install cmatrix
sudo apt -y install fortune
sudo apt -y install lolcat
sudo apt -y install figlet
sudo apt -y install cowsay
sudo apt -y install rig

# Check for any additional updates and clean up.
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove